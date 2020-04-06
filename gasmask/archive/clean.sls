# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import gasmask with context %}

gasmask-cli-package-archive-clean-file-absent:
  file.absent:
    - names:
      - {{ gasmask.pkg.archive.name }}
      - {{ gasmask.dir.tmp }}
