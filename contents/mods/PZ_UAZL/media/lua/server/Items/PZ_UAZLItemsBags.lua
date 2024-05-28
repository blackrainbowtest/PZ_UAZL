local UAZLIB = {}

local SR = {
    Common = 1,
    Uncommon = 0.8,
    Rare = 0.7,
    VeryRare = 0.6,
    ExtraRare = 0.4,
    Elite = 0.3,
    Legendary = 0.1
}

-- ============================================================
-- Школьные рюкзаки / Ланчбоксы
-- ============================================================
function UAZLIB:getLunchboxItems(rarity)
    rarity = rarity or 3;

    local items = { 
        {"Base.Pop", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Вода
        {"Base.Pop2", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Вода
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Вода
        {"Base.PopBottle", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Вода
        {"Base.Milk", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Вода
        {"Base.JuiceBox", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Вода
        {"Base.BagelPlain", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.Cereal", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.Crisps", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.Crisps2", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.Crisps3", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.Crisps4", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.Cornbread", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.Crackers", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.Croissant", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.GrahamCrackers", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.GranolaBar", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.BagelPoppy", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.Pretzel", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.BagelSesame", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.TortillaChips", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.Allsorts", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.PieApple", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.Biscuit", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CakeBlackForest", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.LicoriceBlack", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.PieBlueberry", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CakeSlice", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CandyFruitSlices", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.Candycane", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CandyCorn", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CandyPackage", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CakeCarrot", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CakeCheeseCake", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.Painauchocolat", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.ChocoCakes", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CakeChocolate", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.ChocolateChips", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CookiesChocolate", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.ChocolateCoveredCoffeeBeans", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.DoughnutChocolate", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CinnamonRoll", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CookieChocolateChip", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.Cupcake", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.DoughnutPlain", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.DoughnutFrosted", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.MuffinFruit", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.GummyBears", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.GummyWorms", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.HardCandies", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.HiHis", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.Icecream", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.ConeIcecream", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.Icing", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.JellyBeans", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.DoughnutJelly", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.Jujubes", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.PieKeyLime", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.PieLemonMeringue", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.Lollipop", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.Marshmallows", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.MintCandy", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.Modjeska", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CookiesOatmeal", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.Peppermint", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.Plonkies", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.PiePumpkin", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.RockCandy", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.QuaggaCakes", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Сладости
        {"Base.CookieJelly", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.LicoriceRed", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CakeRedVelvet", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CookiesShortbread", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.Smore", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.SnoGlobes", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CakeStrawberryShortcake", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.CookiesSugar", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Сладости
        {"Base.Burger", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Разная еда
        {"Base.CheeseSandwich", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Разная еда
        {"Base.Corndog", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Разная еда
        {"Base.ChickenFried", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Разная еда
        {"Base.FishFried", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Разная еда
        {"Base.OystersFried", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Разная еда
        {"Base.ShrimpFried", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Разная еда
        {"Base.Gum", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Разная еда
        {"Base.Hotdog", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Разная еда
        {"Base.PeanutButterSandwich", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Разная еда
        {"Base.Waffles", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Разная еда
        {"Base.Yoghurt", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Разная еда
    } 

    return items
end

-- ============================================================
-- Большой рюкзак
-- ============================================================
function UAZLIB:getALICEpackItems(rarity)
    rarity = rarity or 3;

    local items = { 
        {"Base.WaterBottleFull", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Вода
        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Вода
        {"Base.WhiskeyWaterFull", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Вода
        {"Base.MayonnaiseWaterFull", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Вода
        {"Base.WaterPopBottle", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Вода
        {"Base.JuiceBox", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Вода
        {"Base.Pop", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Вода
        {"Base.Pop2", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Вода
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Вода
        {"Base.PopBottle", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Вода
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.Crackers", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.GrahamCrackers", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.Pretzel", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.GummyBears", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.GummyWorms", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.RockCandy", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Еда
        {"Base.Crisps", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.Crisps2", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.Crisps3", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.Crisps4", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Еда
        {"Base.RemouladeFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Еда
        {"Base.PeanutButter", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Еда
        {"Base.Waffles", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.TinnedBeans", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedCarrots2", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedChili", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedCorn", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedCornedBeef", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedFruitCocktail", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedMushroomSoup", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedPeaches", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedPeas", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedPineapple", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedPotato2", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedSardines", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.TinnedSoup", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedBolognese", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedTomato2", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.TunaTin", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.Dogfood", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedMilk", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.CannedFruitBeverage", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Еда
        {"Base.HiHis", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Еда
        {"Base.BandageDirty", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Медецина
        {"Base.DenimStripsDirty", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Медецина
        {"Base.LeatherStripsDirty", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Медецина
        {"Base.RippedSheetsDirty", tonumber(string.format("%.4f", rarity * SR.Common))}, -- Медецина
        {"Base.DenimStrips", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Медецина
        {"Base.LeatherStrips", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Медецина
        {"Base.RippedSheets", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Медецина
        {"Base.Bandaid", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Медецина
        {"Base.AlcoholRippedSheets", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Медецина
        {"Base.Bandage", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Медецина
        {"Base.AlcoholWipes", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Медецина
        {"Base.PillsVitamins", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Медецина
        {"Base.Antibiotics", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Медецина
        {"Base.AlcoholBandage", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Медецина
        {"Base.Disinfectant", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Медецина
        {"Base.Splint", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Медецина
        {"Base.AlcoholedCottonBalls", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Медецина
        {"Base.Tweezers", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Медецина
        {"Base.SutureNeedleHolder", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Медецина
        {"Base.SutureNeedle", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Медецина
    } 

    return items
end

-- ============================================================
-- Армейский рюкзак
-- ============================================================
function UAZLIB:getALICEpack_ArmyItems(rarity)
    rarity = rarity or 3;

    local items = { 
        {"Base.223Bullets", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.308Bullets", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.Bullets38", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.Bullets45", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.556Bullets", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.Bullets9mm", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.ShotgunShells", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Патроны
        {"Base.223Box", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.308Box", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.Bullets38Box", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.Bullets45Box", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.556Box", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.Bullets9mmBox", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.ShotgunShellsBox", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Патроны
        {"Base.9mmClip", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Магазины
        {"Base.45Clip", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Магазины
        {"Base.44Clip", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Магазины
        {"Base.223Clip", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Магазины
        {"Base.308Clip", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Магазины
        {"Base.556Clip", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Магазины
        {"Base.M14Clip", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Магазины
        {"Base.Tshirt_CamoDesert", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Tshirt_CamoGreen", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Tshirt_ArmyGreen", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Tshirt_CamoUrban", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Jacket_ArmyCamoDesert", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Jacket_ArmyCamoGreen", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Ghillie_Top", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Vest_Hunting_CamoGreen", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Vest_BulletArmy", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Trousers_ArmyService", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Trousers_Black", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Trousers_CamoDesert", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Trousers_CamoGreen", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Trousers_CamoUrban", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.HazmatSuit", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Shoes_ArmyBoots", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Shoes_ArmyBootsDesert", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Hat_BalaclavaFull", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Hat_BalaclavaFace", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Hat_Beret", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Hat_BeretArmy", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.Hat_Army", tonumber(string.format("%.4f", rarity * SR.Legendary))}, -- Одежда
        {"Base.HandTorch", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Источники света
        {"Base.Matches", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Источники света
        {"Base.Lighter", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Источники света
        {"Base.Torch", tonumber(string.format("%.4f", rarity * SR.Elite))}, -- Источники света
        {"Base.WalkieTalkie4", tonumber(string.format("%.4f", rarity * SR.Rare))}, -- Коммуникации
        {"Base.WalkieTalkie5", tonumber(string.format("%.4f", rarity * SR.VeryRare))}, -- Коммуникации
        {"Base.HamRadio2", tonumber(string.format("%.4f", rarity * SR.ExtraRare))}, -- Коммуникации
        {"Base.Notebook", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Документация
        {"Base.Notebook", tonumber(string.format("%.4f", rarity * SR.Uncommon))}, -- Документация
    } 

    return items
end


return UAZLIB
