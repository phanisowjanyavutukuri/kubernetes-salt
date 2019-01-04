run_ca_cert.sh:
  cmd.script:
    - name: install_certs.sh
    - source: salt://generate_certs/ca_cert.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_admin_cert.sh:
  cmd.script:
    - name: install_certs.sh
    - source: salt://generate_certs/admin_cert.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_worker_cert.sh:
  cmd.script:
    - name: install_certs.sh
    - source: salt://generate_certs/worker_cert.sh
    - args: "{{ pillar['worker_ip'] }}"
    - cwd: /install/
    - user: root
    - stateful: True
run_kube_controller_cert.sh:
  cmd.script:
    - name: kube_controller_cert.sh
    - source: salt://generate_certs/kube_controller_cert.sh 
    - cwd: /install/
    - user: root
    - stateful: True
run_kube_proxy_cert.sh:
  cmd.script:
    - name: kube_proxy_cert.sh
    - source: salt://generate_certs/kube_proxy_cert.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_kube_scheduler_cert.sh:
  cmd.script:
    - name: kube_scheduler_cert.sh
    - source: salt://generate_certs/kube_scheduler_cert.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_kube_api_cert.sh:
  cmd.script:
    - name: kube_api_cert.sh
    - source: salt://generate_certs/kube_api_cert.sh 
    - args: "{{ pillar['admin_ip'] }}" 
    - cwd: /install/
    - user: root
    - stateful: True
run_serviceaccount_cert.sh:
  cmd.script:
    - name: serviceaccount_cert.sh
    - source: salt://generate_certs/serviceaccount_cert.sh
    - cwd: /install/
    - user: root
    - stateful: True
run_kube_proxy_config.sh:
  cmd.script:
    - name: kube_proxy_config.sh
    - source: salt://generate_certs/kube_proxy_config.sh
    - args: "{{ pillar['admin_ip'] }}"
    - cwd: /install/
    - user: root
run_kube_controller_config.sh:
  cmd.script:
    - name: kube_controller_config.sh
    - source: salt://generate_certs/kube_controller_config.sh  
    - args: "{{ pillar['admin_ip'] }}"
    - cwd: /install/
    - user: root
run_kube_scheduler_config.sh:
  cmd.script:
    - name: kube_scheduler_config.sh
    - source: salt://generate_certs/kube_scheduler_config.sh
    - args: "{{ pillar['admin_ip'] }}"
    - cwd: /install/
    - user: root
run_admin_config.sh:
  cmd.script:
    - name: admin_config.sh
    - source: salt://generate_certs/admin_config.sh
    - args: "{{ pillar['admin_ip'] }}" 
    - cwd: /install/
    - user: root

run_encryption.sh:
  cmd.script:
    - name: encryption.sh 
    - source: salt://generate_certs/encryption.sh 
    - cwd: /install/
    - user: root
run_worker_config.sh:
  cmd.script:
    - name: worker_config.sh
    - source: salt://generate_certs/worker_config.sh
    - args: "{{ pillar['worker_ip'] }}"
    - cwd: /install/
    - user: root

