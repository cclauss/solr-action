const core = require('@actions/core');
const github = require('@actions/github');

const solr = require('solr-client')

async function run(){
  const client = solr.createClient({core: 'core5'})
  await client.ping();
}

run().catch((err) => {
  console.error(err)
  // core.setFailed(err.message);
  process.exit(1)
})
