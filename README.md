
## [STANDALONE] Bullet Proof Vest system with metadata
### **[[DOWNLOAD](https://github.com/Puntzi/pnt_bulletProofVest)]**
**[Preview](https://streamable.com/u5a8dm)**

**FEATURES**

* Resmon 0.0
* Saves % armour with metadata
* Easy to edit everything in script
* Easely configurable

**Requeriments**
* ox_inventory
* ox_lib
* oxmysql


**Update 2.0.0**
* Now when u put a bulletproof and u remove it u will recive the correct bulletproof
* When u disconnect the armour u have will get saved in the DB
* When u connect the amrmour saved in the DB will be put it to you


*Edited the [OX] part because this is a STANDALONE resource not a OX resource so that was my bad*

**If u want to change names or anything like that you need to know a little codding to be able to edit the code (it's not hard to do it)**


***Remember to add this to your ox_inventory data/items***

```
	['bulletproofvest'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500,
			export = 'pnt_bulletProofVest.bulletproofvest',
		},
	},

	['mediumbulletproofvest'] = {
		label = 'Medium Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500,
			export = 'pnt_bulletProofVest.mediumbulletproofvest',
		},
	},

	['lowbulletproofvest'] = {
		label = 'Low Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500,
			export = 'pnt_bulletProofVest.lowbulletproofvest',
		},
	},
```

***And if u want to add new bullet proofs you need to add it do client/client.lua too***


##### Any improve to the script just tell me and i will update it, feel free to do any pull request for code improve or anything :smiley: