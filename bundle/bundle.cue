bundle: {
	apiVersion: "v1alpha1"
	name:       "my-timoni-bundle-app"
	instances: {
		redis: {
			module: {
				url:     "oci://ghcr.io/stefanprodan/modules/redis"
				version: "7.2.4"
			}
			namespace: "timoni-bundle"
			values: maxmemory: 256
		}
		podinfo: {
			module: url:     "oci://ghcr.io/stefanprodan/modules/podinfo"
			module: version: "6.10.0"
			namespace: "timoni-bundle"
			values: caching: {
				enabled:  true
				redisURL: "tcp://redis:6379"
			}
		}
	}
}
