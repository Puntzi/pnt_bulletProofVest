
## [OX] Bullet Proof Vest system with metadata
### **[[DOWNLOAD](https://github.com/Puntzi/pnt_bullerProofVest)]**
**[Preview](https://streamable.com/u5a8dm)**

**FEATURES**

* Resmon 0.0
* Saves % armour with metadata
* Easy to edit everything in script
* Easely configurable

**Requeriments**
* ox_inventory
* ox_lib


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


##### Any improve to the script just tell me and i will update it, feel free to do any pull request for code improve or anything :smiley: