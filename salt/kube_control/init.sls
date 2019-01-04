run_install_kube_control_plane.sh:
  cmd.script:
    - name: install_kube_control_plane.sh
    - source: salt://kube_control/install_kube_control_plane.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_api_server_service.sh:
  cmd.script:
    - name: api_server_service.sh 
    - source: salt://kube_control/api_server_service.sh 
    - args: "{{ pillar['admin_ip'] }},{{ pillar['etcd_ip'] }}"
    - cwd: /install/
    - user: root
    - stateful: True
run_controller_service.sh:
  cmd.script:
    - name: install_certs.sh
    - source: salt://kube_control/controller_service.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_scheduler_service.sh:
  cmd.script:
    - name: kube_controller_cert.sh
    - source: salt://kube_control/scheduler_service.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_rbac.sh:
  cmd.script:
    - name: rbac.sh
    - source: salt://kube_control/rbac.sh
    - cwd: /install/
    - user: root
    - stateful: True

