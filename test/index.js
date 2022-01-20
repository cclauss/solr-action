const solr = require('solr-client')

async function run(){
  const client = solr.createClient({core: 'core5'})
  await client.ping();
}

run().catch((err) => {
  console.error(err)
  process.exit(1)
})
