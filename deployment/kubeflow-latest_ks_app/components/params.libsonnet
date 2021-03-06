{
  global: {},
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "google-cloud-filestore-pv": {
      name: "kubeflow-gcfs",
      path: "/kubeflow",
      serverIP: "10.157.130.242",
      storageCapacity: "1T",
    },
    "pytorch-operator": {
      cloud: "null",
      disks: "null",
      name: "pytorch-operator",
      namespace: "null",
      pytorchDefaultImage: "null",
      pytorchJobImage: "gcr.io/kubeflow-images-public/pytorch-operator:v20180619-2e19016",
    },
    ambassador: {
      ambassadorImage: "gcr.io/kubeflow-images-public/ambassador:0.30.1",
      ambassadorServiceType: "ClusterIP",
      cloud: "gke",
      name: "ambassador",
      statsdImage: "gcr.io/kubeflow-images-public/statsd:0.30.1",
    },
    jupyterhub: {
      cloud: "gke",
      disks: "kubeflow-gcfs",
      gcpSecretName: "user-gcp-sa",
      image: "gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1",
      jupyterHubAuthenticator: "iap",
      name: "jupyterhub",
      namespace: "null",
      notebookPVCMount: "/home/jovyan",
      registry: "gcr.io",
      repoName: "kubeflow-images-public",
      serviceType: "ClusterIP",
    },
    centraldashboard: {
      image: "gcr.io/kubeflow-images-public/centraldashboard:v0.2.1",
      name: "centraldashboard",
    },
    "tf-job-operator": {
      cloud: "null",
      name: "tf-job-operator",
      namespace: "null",
      tfDefaultImage: "null",
      tfJobImage: "gcr.io/kubeflow-images-public/tf_operator:v0.2.0",
      tfJobUiServiceType: "ClusterIP",
      tfJobVersion: "v1alpha2",
    },
    spartakus: {
      name: "spartakus",
      reportUsage: true,
      usageId: "a9cfe6c1-0e75-44aa-8fc0-a44db63611dc",
    },
    "cert-manager": {
      acmeEmail: "google-kubeflow-team@google.com",
      acmeUrl: "https://acme-v01.api.letsencrypt.org/directory",
      name: "cert-manager",
      namespace: "null",
    },
    "iap-ingress": {
      disableJwtChecking: "false",
      envoyImage: "gcr.io/kubeflow-images-public/envoy:v20180309-0fb4886b463698702b6a08955045731903a18738",
      hostname: "dev-latest.kubeflow.org",
      ipName: "kubeflow-latest-ip",
      issuer: "letsencrypt-prod",
      name: "iap-ingress",
      namespace: "kubeflow-latest",
      oauthSecretName: "kubeflow-oauth",
      secretName: "envoy-ingress-tls",
    },
  },
}
