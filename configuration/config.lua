Config = {}

Config.CommandRemoveVest = 'removevest'

Config.VestComponent = {
    bulletproofvest = {
        armourQuantity = 100, -- How much armor u want to add this item
        Male = {
            drawableId = 15, -- The drawable Klevar for this item should be in Kevlar section 
            textureId = 2, -- The texture for that drawable Klevar
        },

        -- Here it's the same but for Female incase it's not the same drawable
        Female = {
            drawableId = 17,
            textureId = 2,
        }
    },

    mediumbulletproofvest = {
        armourQuantity = 50,
        Male = {
            drawableId = 1,
            textureId = 0,
        },

        Female = {
            drawableId = 1,
            textureId = 0,
        }
    },

    lowbulletproofvest = {
        armourQuantity = 25,
        Male = {
            drawableId = 1,
            textureId = 1,
        },

        Female = {
            drawableId = 1,
            textureId = 1,
        }
    }

}

