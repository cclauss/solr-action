const solr = require('solr-client')
const client = solr.createClient({core: 'corename'})

async function run(){
  await client.ping();
}

run().catch((err) => {
  console.error(err)
  process.exit(1)
})
