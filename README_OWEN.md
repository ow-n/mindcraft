## Get it running
1) Open Minecraft world 1.20.4 (check correct version in settings)
2) Open LAN Port Number: 55916
3) run 'node main.js'


## To Rebuild / Docker / Cloud Push
docker build -t mindcraft.azurecr.io/mindcraft:0.0.1 .
docker push mindcraft.azurecr.io/mindcraft:0.0.1
az container restart --name YOUR-CONTAINER-INSTANCE-NAME --resource-group YOUR-RESOURCE-GROUP
- 0.0.x - pre-alpha "0.0.11"
- 0.x.0 - alpha "Alpha 1.0.17"
- 0.x.0 - beta "Beta 1.8"
- 1.0.0 - full release "1.20.4"

- when mindcraft run on azure, access here:
- http://YOUR_AZURE_CONTAINER_IP:8080
- http://YOUR_AZURE_CONTAINER_IP:3000


## Fetch update from Origin Repo

## Azure Notes
- Create Azure Container Registry
  - to store Docker image

- Region US West 2
- Login Server: mindcraft.azurecr.io

# Login to Azure
az login

# Create a resource group
az group create --name mindcraft-rg --location eastus

# Create an Azure Container Registry
az acr create --resource-group mindcraft-rg --name mindcraftregistry --sku Basic

# Enable admin access
az acr update -n mindcraftregistry --admin-enabled true

# Login to your ACR
az acr login --name mindcraftregistry

- SKU = Stock Keeping Unit
   - the pricing tier/performance of service
   - eg. basic / standard / premium

- Resource Group  logical container that holds related Azure resources
  - like a folder for Azure stuff




## Repo Notes
- Agent Commands List:
  - /src/agents/commands/queries.js
Query Commands (information only):
!inventory - Check your inventory
!stats - Get location, health, hunger, time of day
!nearbyBlocks - See blocks near you
!craftable - See what you can craft
!entities - See nearby players and entities
!modes - See available modes and their status
!savedPlaces - List saved locations
!getCraftingPlan - Get crafting plan for an item
!searchWiki - Search Minecraft Wiki
!help - List all available commands
Action Commands (perform actions):
!goToPlayer - Go to a player
!followPlayer - Follow a player
!givePlayer - Give items to a player
!collectBlocks - Collect blocks
!craftRecipe - Craft items
!equip - Equip items
!attack - Attack entities
and more...

## Talk to Multiple Agents
When there are multiple agents online, you can:
Use !entities to see which agents are nearby
Use !startConversation to start talking to a specific agent
Use !endConversation to end the conversation