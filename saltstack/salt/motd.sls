deploy motd:
  file.managed:
    - name: /etc/motd
    - source: salt://motd
    - template: jinja

add banner to sshd:
  file.append:
    - name: /etc/ssh/sshd_config
    - text: Banner /etc/motd

restart sshd on configuration change:
  service.running:
    - name: ssh
    - enable: true
    - reload: true
    - watch:
      - file: /etc/ssh/sshd_config
