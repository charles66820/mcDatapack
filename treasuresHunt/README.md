# Treasures hunt

## Main function

Start a game

```lua
/function bitacu:game/init_game
```

Pause a game

```lua
/function bitacu:timer/pause_timer
```

Resume a game

```lua
/function bitacu:timer/resume_timer
```

## Paramétres du datapack

- les multiplicateur de minerée pour les pointes dans `init_teams_points` (ironMulti, goldMulti emeraldMulti et diamondMulti)

## les focntions pour l'utilisateur

timer/rm_timer : supprime le timer
timer/init_timer : initialise le timer a 0
timer/pause_timer : mets en pause le timer
timer/resume_timer : relance le timer
chest/rand_chest : fait apparéte un coffre aléatoire
points/show_teams_points : affiche le score des équipes
game/init_game : initialise la partie et défini l'origine
game/start_game : démarre la partie
game/team_won : affiche les équipe qui on gagner
points/team_rank : donne les équipes dans lordre des vinceurs
debug : show debug
