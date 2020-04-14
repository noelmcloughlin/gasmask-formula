#.-*- coding: utf-8 -*-
# vim: ft=sls

    {%- if grains.os_family == 'MacOS' %}

include:
  - .install

    {%- else %}

gasmask-archive-install-unavailable:
  test.show_notification:
    - text: |
        Gasmask is only available on MacOS

    {%- endif %}
