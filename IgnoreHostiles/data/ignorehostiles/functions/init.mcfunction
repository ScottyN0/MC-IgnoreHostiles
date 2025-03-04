# init.mcfunction

# 1) Remove old team if it exists (optional cleanup)
team remove ignoreTeam

# 2) Create new team
team add ignoreTeam "Ignore Team"

# 3) Disable friendly fire
team modify ignoreTeam friendlyFire false

# 4) Add the player you want protected
#    Replace PLAYERNAME with the exact in-game username
team join ignoreTeam PLAYERNAME
