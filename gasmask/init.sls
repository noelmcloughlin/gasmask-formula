# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import gasmask with context %}
{%- set p = gasmask.pkg %}

include:
  - .archive
