# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import gasmask with context %}

gasmask-package-archive-clean-file-absent:
  file.absent:
    - names:
      - /Applications/Gas Mask
      - {{ gasmask.dir.tmp }}
