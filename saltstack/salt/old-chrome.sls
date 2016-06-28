install-old-chrome:
  pkg.installed:
    - name: google-chrome-stable
    - sources:
      - google-chrome-stable: salt://google-chrome-42-0-2311-90-64-bit-multi-ubu.deb
    - allow_updates: True
update-chrome:
  pkg.latest:
    - name: google-chrome-stable
