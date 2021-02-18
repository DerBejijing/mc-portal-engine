# mc-portal-engine
Portal 2 as a datapack in minecraft

This is my current project: creating Portal (2) in vanilla minecraft. You will need the resource-pack [here](https://github.com/DerBejijing/mc-portal-resources) to use it.  
It may seen like a very long readme, but that is just because it is very detailed. The most is just unnecessary stuff.  
*THIS IS NOT MADE FOR SURVIVAL PROJECTS! The purpose is to create own testchambers and it does not make sense to use it for something else!*  

**Rules**  
You are allowed to:
  - modify the code
  - add your own stuff
  - showcase it to others

However, you are not allowed to
  - use it for commercial purposes (eg. selling it), even if you modified it
  - call it your own

Please always link me as the creator :)

**How to install**  
You first need a minecraft 1.16.x world you would like to use it in.
I recommend a superflat world with disabled mob-spawning. Now navigate to it with your file-manager and drag the "engine" folder in the worlds folder "datapacks".  
And that's it - just re-join your world or type `/reload` to load the datapack.

It would be helpful to use the resource-pack i made for it so everything looks a bit more like portal.
You can now start creating your own test-chambers in minecraft!

**How to use**  
Once you typed reload you will have some items in your hotbar. The first is the Portalgun, the second are some testing elements, the third is a chamber-door, the fourth a lift door and the last is for the gels and the hardlight bridge.

When you press `f` while holding an item from the testing-element section, it will switch to the next, eg a button.
So when you hold the `weighted storage cube` and press `f`, it will switch to the `1500 Megawatt Aperture Science Heavy Duty Super-Colliding Super Button`.
The same goes for the gels.

**Now a short explanation**    
  - cube: can be played normally and be picked up when being right-clicked with the portal gun. A second right-click somewhere will place the cube at your current position. **_Warning_**: Yet, there is still a bug in the code so **don't** destroy it by breaking it! If you want to get rid of it pick it up with the portalgun and reload
  - painted cube: If the player has picked up a cube with the portal gun and is hit by the blue gel it will give the player jumpboost when he is standing on it. Can be cleaned using acid (yellow gel). Same warning as for the default cube
  - button: can be placed in the floor and will emit power if there is a cube above it. It will not be triggered by a painted cube! Destroy by breaking
  - thermal discouragement beam: Will emit a laser beam when it is activated by redstone. When being placed, it will be directed towards the player
  - thermal redirection cube: will redirect a laser that hits it. When beeing placed (wether by the portalgun or by hand) it will be faced to the direction the player was facing. Only supports *north, east, south, west*. Can be picked up by rightclicking with the portalgun. Destroy by breaking
  - laser sensor: Will emit power if a laser beam hits it. When beeing played it points towards the player. Destroy by breaking
  - aerial faith plate: once a player walks on it, it will launch the player to the direction it was placed in. Destroy by breaking
  - hardlight bridge: place on a wall. Cannot be powered by redstone yet, because I was to lazy to do so. Will do it in the next days. Instead the block behind it has to be granite. I know, stupid, but I'll fix it. It can only be stopped by gray concrete yet. I will change it very soon.

  - turret: will look towards the player when placed. **Not functional yet**! It will cast rays to try to find a player. **Warning**: on weaker computers this may decrease performance a lot when multiple turrets are used! The rays can be visualized by enabling the debug mode (`/trigger debug`)

  - repulsion gel: when placed on the ceiling or on a wall it will down paint that interacts with blocks and players. When the floor is made of white or gray concrete it will show some splashes on it. When a player walks on that painted area he will get jumpboost. Also, when he has picked up a cube with his portalgun, the cube will be painted blue if the player is hit by gel. (Still some bugs here). Destroy by breaking
  - acid: works the same way as the repulsion gel, but instead it removes blue paint from cubes that are taken under it. Destroy by breaking

  - doors: when the base block is powered it will open. The normal chamber door can only be placed in two directions. I am working on this. Destroy by breaking the base block

**The portalgun**  
The portal color can be switched by pressing `f`. When fired to a wall that follows this rule:  
  - there is an at least 2x1 area
  - lower block is white terracotta
  - the upper block is orange terracotta

A portal will be placed. Place a second one and walk through it. Easy.  
Until now, it does not interact with other game objects.

**debug mode**  
`/trigger debug` will activate the debug mode so particles by e.g the turret are shown. Will be filled with more use later on.  
  
  
  
Funfact: Now the project has a total of `1352` lines xD
