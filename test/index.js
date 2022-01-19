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
  process.exit(1)
})
