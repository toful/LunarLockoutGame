# Lunar Lockout Game
PDDL files required for a planner (FF Planner in this case) to solve the Lunar Lockout Game problem.

## Game

The lunar lockout game has several pieces:
* 5x5 game board with a red square marked in the middle
* 5 helper spacecraft in various colors 
* 1 red spacecraft
* cards that specify initial setup position for some subset of spacecraft. On the back of each card is a solution

The goal of this game it to move the red spacecraft to the center red square. 
One can move any spacecraft but they are limited to moving up-down or left-right. 
Whenever a spacecraft moves, it continues moving until it hits another spacecraft. 

## Pre-requisites

Install FF Planner:

	wget https://fai.cs.uni-saarland.de/hoffmann/ff/FF-X.tgz
	tar zxvf FF-X.tgz
	cd FF-X
	make

## Run

	FF-X/ff -o [domain_file] -f [problem_file]
Example:

	FF-X/ff -o lunarLockoutGame.pddl -f lunarLockoutGame_problem.pddl

## Author

* **Cristòfol Daudén Esmel** - [toful](https://github.com/toful)

More information in the memory.pdf