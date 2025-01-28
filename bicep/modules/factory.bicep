targetScope = 'resourceGroup'  // Set targetScope to resourceGroup

param dataFactoryName string

param globalParameters object 

resource dataFactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: dataFactoryName
  location: 'East US'
}

resource globalParametersADF 'Microsoft.DataFactory/factories/globalParameters@2018-06-01' = {
  parent: dataFactory
  name: 'globalParameters'
  properties: globalParameters.definition.properties
}

