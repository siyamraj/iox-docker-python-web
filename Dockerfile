descriptor-schema-version: "2.2"

info:
  name: iox_docker_python_web
  description: "IOx Docker Python Web Sample Application"
  version: "1.0"
  author-link: "http://www.cisco.com"
  author-name: "Cisco Systems"

app:

  cpuarch: "x86_64"
  type: docker
  resources:
    profile: c1.small
    network:
      -
        interface-name: eth0
        ports:
          tcp:
            - 8000

  # Specify runtime and startup
  startup:
    rootfs: rootfs.tar
    target: ["/usr/local/bin main.py"]
