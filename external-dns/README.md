# Expected Result

- repo_ingress should create `dev-test-server.stg-sg0.qgraph-vpc.io` rule under zone `qgraph-vpc.io`
- repo_service should create rules under zone `qgraph-vpc.io`, which point to loadbalancer.
  - `nginx.stg-sg0.qgraph-vpc.io`:  `a69dc89dc563745479349f08a7da44a5-1125368022.ap-southeast-1.elb.amazonaws.com.`
  - `_extdns.nginx.stg-sg0.qgraph-vpc.io`:  `"heritage=external-dns,external-dns/owner=ficus-aws-appier-aiqua-internal,external-dns/resource=service/aiqua-slim/dev-test-nginx"`
  - `_extdns.cname-nginx.stg-sg0.qgraph-vpc.io`:   `"heritage=external-dns,external-dns/owner=ficus-aws-appier-aiqua-internal,external-dns/resource=service/aiqua-slim/dev-test-nginx"`

# Others
https://minikube.sigs.k8s.io/docs/handbook/addons/ingress-dns/
