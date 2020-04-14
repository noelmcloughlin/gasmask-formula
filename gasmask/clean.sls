# -*- coding: utf-8 -*-
# vim: ft=sls

    {%- if grains.os_family == 'MacOS' %}

include:
  - .archive.clean

    {%- else %}

gasmask-init-unapplicable:
  test.show_notification:
    - text: |
        Gasmask is only applicable on MacOS

    {%- endif %}
