name                    'kube-hops'
maintainer              'Logical Clocks AB'
maintainer_email        'fabio@logicalclocks.com'
license                 ''
description             'Installs/Configures kube-hops-chef'
version                 '0.6.0'

depends 'kagent'
depends 'ndb'
depends 'sysctl'
depends 'resolver'
depends 'kernel_module'

recipe 'kube-hops::ca', 'Create and configure Kubernetes\'s CA'
recipe 'kube-hops::master', 'Configure a node as Kubernetes master'
recipe 'kube-hops::node', 'Configure a node as Kubernetes slave'
recipe 'kube-hops::addons', 'Deploy addons on the cluster'
recipe 'kube-hops::hopsworks', 'Configure Hopsworks to use Kubernetes'


attribute "kube-hops/cgroup-driver",
          :description =>  "Cgroup driver",
          :type => 'string'

attribute "kube-hops/kubernetes_version",
          :description =>  "kubernetes_version",
          :type => 'string'

attribute "kube-hops/image_repo",
          :description =>  "Repo for default images",
          :type => 'string'

attribute "kube-hops/cidr",
          :description =>  "Cluster address space",
          :type => 'string'

attribute "kube-hops/dns_ip",
          :description =>  "Ip of the DNS service",
          :type => 'string'

attribute "kube-hops/apiserver/port",
          :description =>  "Port on which the apiserver listens for requests",
          :type => 'string'

attribute "kube-hops/master/untaint",
          :description =>  "Untaint master - meaning that user pods can run on the master node",
          :type => 'string'

attribute "kube-hops/conf_dir",
          :description =>  "Kubernetes configuration dir",
          :type => 'string'

attribute "kube-hops/kubelet_dir",
          :description =>  "Kubelet configuration dir",
          :type => 'string'

attribute "kube-hops/pki/ca_api",
          :description =>  "endpoint of the CA api server (Hopsworks)",
          :type => 'string'

attribute "kube-hops/pki/ca_api_user",
          :description =>  "User running the CA api server",
          :type => 'string'

attribute "kube-hops/pki/ca_api_group",
          :description =>  "Group running the CA api server",
          :type => 'string'

attribute "kube-hops/pki/ca_keypw",
          :description =>  "Password for the kube-ca key",
          :type => 'string'

attribute "kube-hops/pki/rootca_keypw",
          :description =>  "Password for the root-ca key",
          :type => 'string'

attribute "kube-hops/pki/rootca_keypw",
          :description =>  "Password for the root-ca key",
          :type => 'string'

attribute "kube-hops/pki/dir",
          :description =>  "PKI artifacts directory on master and node machines",
          :type => 'string'

attribute "kube-hops/pki/keysize",
          :description =>  "length of keys",
          :type => 'string'

attribute "kube-hops/pki/days",
          :description =>  "Expiration time for certificates",
          :type => 'string'

attribute "kube-hops/pki/verify_hopsworks_cert",
          :description =>  "Verify Hopsworks HTTPS certificate",
          :type => 'string'

attribute "kube-hops/pki/hopsworks_cert_pwd",
          :description =>  "Password for the Hopsworks certificate",
          :type => 'string'

