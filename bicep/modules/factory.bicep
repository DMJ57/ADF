targetScope = 'resourceGroup'  // Set targetScope to resourceGroup

param dataFactoryName string

resource dataFactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: dataFactoryName
  location: 'East US'
}

