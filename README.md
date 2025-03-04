# MC-IgnoreHostiles

**IgnoreHostiles** is a Minecraft datapack that automatically prevents hostile mobs from attacking a designated player by using the team system. When enabled, it continuously adds any new hostile mob to a team (named `ignoreTeam`) with friendly fire disabled, ensuring that mobs on that team won’t target players who share the same team.

## Features

- **Automatic Mob Management:** Every vanilla hostile mob that spawns is automatically added to the `ignoreTeam`.
- **Player Protection:** The datapack adds a specified player to the same team so that hostile mobs ignore that player.
- **Continuous Execution:** Uses Minecraft’s tick functions (running every game tick) to check and assign mobs.
- **Vanilla & Extendable:** Designed for vanilla hostile mobs, and can be extended to include modded mobs if needed.

## How It Works

1. **Team Creation & Configuration:**  
   - On load, the datapack runs an initialization function (`init.mcfunction`) that creates a team called `ignoreTeam`, disables friendly fire on the team, and adds the designated player.
   
2. **Tick Function:**  
   - A tick function (`tick.mcfunction`) is automatically executed every game tick (via the tick tag file `tick.json`), which scans for any hostile mobs not on the team and adds them.
   - Once a hostile mob is on `ignoreTeam`, it will not target the player who is also on that team.

3. **Aggro Consideration:**  
   - Note that if a mob has already locked onto a target before being added to the team, it may not immediately drop its target. Newly spawned mobs will, however, ignore the designated player from the start.

## Installation

1. **Download and Package:**  
   - Place the datapack as either a folder or a JAR/ZIP file in your world’s `datapacks` directory.
   - Ensure that the folder/JAR has the following structure:

     ```
     IgnoreHostiles/
     ├─ pack.mcmeta
     └─ data/
         └─ ignorehostiles/
             ├─ functions/
             │   ├─ init.mcfunction
             │   └─ tick.mcfunction
             └─ tags/
                 └─ functions/
                     ├─ load.json
                     └─ tick.json
     ```

2. **Configuration:**  
   - Open `init.mcfunction` and replace `PLAYERNAME` with the exact in-game username of the player who should be protected.
   
3. **Restart Your Server/World:**  
   - A **full server restart** is recommended (instead of using `/reload`) to ensure all datapack functions load automatically.
   - Verify installation by running:
     ```
     /datapack list
     ```
     and checking that your datapack appears.

## Usage

- **Automatic Protection:**  
  Once the datapack is loaded, any new hostile mob will be automatically assigned to the `ignoreTeam`, causing them to ignore the protected player.

- **Manual Testing:**  
  You can test the functionality by summoning a new hostile mob:
