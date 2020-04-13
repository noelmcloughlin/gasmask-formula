#.-*- coding: utf-8 -*-
# vim: ft=sls

    {%- if grains.os_family == 'MacOS' %}

include:
  - .clean

    {%- else %}

gasmask-archive-clean-unapplicable:
  test.show_notification:
    - text: |
        Gasmask is only applicable on MacOS

    {%- endif %}
