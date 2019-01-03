worker_ip=$1

cat > worker1-csr.json <<EOF
{
"CN": "system:node:worker1",
  "key": {
    "algo": "rsa",
    "size": 2048
  },
  "names": [
    {
      "C": "US",
      "L": "Portland",
      "O": "system:nodes",
      "OU": "Kubernetes The Hard Way",
      "ST": "Oregon"
    }
  ]
}
EOF

cfssl gencert \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=ca-config.json \
  -hostname=worker1,$worker_ip \
  -profile=kubernetes \
  worker1-csr.json | cfssljson -bare worker1
