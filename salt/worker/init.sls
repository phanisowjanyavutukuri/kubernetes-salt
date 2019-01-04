run_network.sh:
  cmd.script:
    - name: network.sh
    - source: salt://worker/test.sh
    - cwd: /install/
    - user: root
    - stateful: True
