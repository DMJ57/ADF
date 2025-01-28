targetScope = 'resourceGroup'  // Set targetScope to resourceGroup

param dataFactoryName string
param globalParameters array

resource dataFactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: dataFactoryName
  location: 'East US'
}

resource globalParameterADF 'Microsoft.DataFactory/factories/globalParameters@2018-06-01' = [for globalParameter in globalParameters: {
  parent: dataFactory
  name: globalParameter.name
  properties: globalParameter.definition.properties
}]
