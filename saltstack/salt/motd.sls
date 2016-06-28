deploy motd:
  file.managed:
    - name: /etc/motd
    - source: salt://motd
