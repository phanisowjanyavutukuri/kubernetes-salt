run_my_script.sh:
  cmd.script:
    - name: install_certs.sh
    - source: salt://certs/install_certs.sh
    - cwd: /install/
    - user: root
    - stateful: True
