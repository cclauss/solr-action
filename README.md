# Solr GitHub Action

This [GitHub Action](https://github.com/features/actions) sets up a Solr instance.

# Usage

See [action.yml](action.yml)

Basic:
```yaml
steps:
- uses: patric-dosch-vi/solr-action@v1
  with:
    version: '8.11.1-slim'  # See https://hub.docker.com/_/solr for available versions
    core name: 'mycore'
    config path: 'config'
    
```

# License

The scripts and documentation in this project are released under the [MIT License](LICENSE)
