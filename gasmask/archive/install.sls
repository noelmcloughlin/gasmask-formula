# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import gasmask with context %}
{%- from tplroot ~ "/files/macros.jinja" import format_kwargs with context %}

gasmask-package-archive-install-extract:
  pkg.installed:
    - names:
      - curl
      - tar
      - gzip
  file.directory:
    - name: {{ gasmask.pkg.archive.name }}
    - user: {{ gasmask.rootuser }}
    - group: {{ gasmask.rootgroup }}
    - mode: 755
    - makedirs: True
    - require_in:
      - archive: gasmask-package-archive-install-extract
    - recurse:
        - user
        - group
        - mode
  archive.extracted:
    {{- format_kwargs(gasmask.pkg.archive) }}
    - archive_format: {{ gasmask.pkg.format }}
    - retry: {{ gasmask.retry_option }}
    - user: {{ gasmask.rootuser }}
    - group: {{ gasmask.rootgroup }}
       {%- if grains.kernel|lower == 'linux' %}
    - enforce_toplevel: false
    - options: '--strip-components=1'
       {%- endif %}
