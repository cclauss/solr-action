const core = require('@actions/core');
const github = require('@actions/github');

const solr = require('solr-client')
const client = solr.createClient({core: 'core5'})

async function run(){
  const response = await client.ping().catch(error => {
    throw new Error(error);
  });
  console.log(response)
}

run().catch((err) => {
  console.error(err)
  core.setFailed(err.message);
  process.exit(1)
})
