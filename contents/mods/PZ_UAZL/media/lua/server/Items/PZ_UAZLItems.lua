local function getItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BathTowel", rarity},
        {"Base.BathTowelWet", rarity},
        {"Base.Bleach", rarity},
        {"Base.Broom", rarity},
        {"Base.CleaningLiquid", rarity},
        {"Base.DishCloth", rarity},
        {"Base.DishClothWet", rarity},
        {"Base.Mop", rarity},
        {"Base.Soap", rarity},
        {"Base.Soap2", rarity},
        {"Base.Sponge", rarity},
    }
    return items;
end

-- Бинты
local function getBandagesItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Bandaid", tonumber(string.format("%.4f", rarity))},
        {"Base.Bandaid", tonumber(string.format("%.4f", rarity))},
        {"Base.Bandage", tonumber(string.format("%.4f", rarity))},
        {"Base.AlcoholBandage", tonumber(string.format("%.4f", rarity / 2))},
        {"Base.BandageDirty", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.Splint", tonumber(string.format("%.4f", rarity / 2))},
    }
    return items;
end

-- Дезинфицирующие средства
local function getDisinfectantsItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.AlcoholWipes", rarity},
        {"Base.AlcoholWipes", rarity},
        {"Base.AlcoholedCottonBalls", tonumber(string.format("%.4f", rarity / 2))},
        {"Base.Disinfectant", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.AlcoholedCottonBalls", tonumber(string.format("%.4f", rarity / 2))},
    }
    return items;
end

-- Лекарственное средство из растений
local function getHerbsItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BlackSage", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.Comfrey", tonumber(string.format("%.4f", rarity / 2))},
        {"Base.CommonMallow", tonumber(string.format("%.4f", rarity / 2))},
        {"Base.Ginseng", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.LemonGrass", tonumber(string.format("%.4f", rarity / 2))},
        {"Base.Plantain", tonumber(string.format("%.4f", rarity / 2))},
        {"Base.WildGarlic", tonumber(string.format("%.4f", rarity / 1.5))},
    }
    return items;
end

-- Медицинское оборудование
local function getMedicalEquipmentItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.CottonBalls", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.CottonBalls", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.CottonBalls", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.SutureNeedle", tonumber(string.format("%.4f", rarity / 2))},
        {"Base.SutureNeedleHolder", tonumber(string.format("%.4f", rarity / 5))},
        {"Base.Tweezers", tonumber(string.format("%.4f", rarity / 10))},
        {"Base.Tissue", tonumber(string.format("%.4f", rarity))},
    }
    return items;
end

-- Фармацевтика
local function getPharmaceuticalsItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Antibiotics", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.PillsAntiDep", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Base.PillsBeta", tonumber(string.format("%.4f", rarity / 1.5))},
        {"Painkillers", tonumber(string.format("%.4f", rarity / 5))},
        {"Vitamins", tonumber(string.format("%.4f", rarity / 10))},
        {"Sleeping Tablets", tonumber(string.format("%.4f", rarity / 5))},
    }
    return items;
end

-- Садоводство
local function getGardeningItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BathTowel", rarity},
    }
    return items;
end

-- Чистящие средства
local function getCleaningItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BathTowel", rarity},
        {"Base.BathTowelWet", rarity},
        {"Base.Bleach", rarity},
        {"Base.Broom", rarity},
        {"Base.CleaningLiquid", rarity},
        {"Base.DishCloth", rarity},
        {"Base.DishClothWet", rarity},
        {"Base.Mop", rarity},
        {"Base.Soap", rarity},
        {"Base.Soap2", rarity},
        {"Base.Sponge", rarity},
    }
    return items
end

-- Канцелярские товары
local function getStationeryItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BluePen", rarity},
        {"Base.Pen", rarity},
        {"Base.Pencil", rarity},
        {"Base.RedPen", rarity},
        {"Base.Crayons", rarity},
        {"Base.Eraser", rarity},
        {"Base.Scissors", rarity},
    }
    return items
end

-- Огнетушитель
local function getExtinguisherItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Extinguisher", rarity},
    }
    return items
end

-- Отдых на природе
local function getCampingItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"camping.CampfireKit", rarity},
        {"Base.PercedWood", rarity},
        {"camping.CampingTentKit", rarity},
    }
    return items
end

-- Ловушки
local function getTrappingItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.TrapCage", rarity},
        {"Base.TrapMouse", rarity},
        {"Base.TrapSnare", rarity},
        {"Base.TrapStick", rarity},
        {"Base.TrapBox", rarity},
        {"Base.TrapCrate", rarity},
    }
    return items
end

-- Коммуникация базовые рации
local function getCommunicationsBaseItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Radio.WalkieTalkie1", rarity},
        {"Radio.WalkieTalkie2", rarity},
        {"Radio.WalkieTalkie3", rarity},
        {"Radio.WalkieTalkieMakeShift", rarity},
    }
    return items
end

-- Коммуникация тактические рации
local function getCommunicationsTacticalItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Radio.WalkieTalkie4", rarity},
        {"Radio.WalkieTalkie5", rarity},
    }
    return items
end

-- Ключи (Надо проверить работает или нет)
local function getKeysItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.CarKey", rarity},
        {"Base.Key1", rarity},
        {"Base.Key2", rarity},
        {"Base.Key3", rarity},
        {"Base.Key4", rarity},
        {"Base.Key5", rarity},
    }
    return items
end

-- Обучающая литература / учитель
local function getCarpentrySkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookCarpentry1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookCarpentry2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookCarpentry3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookCarpentry4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookCarpentry5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getCookingSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookCooking1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookCooking2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookCooking3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookCooking4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookCooking5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getElectricianSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookElectrician1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookElectrician2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookElectrician3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookElectrician4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookElectrician5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getFarmingSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookFarming1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookFarming2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookFarming3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookFarming4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookFarming5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getFirstAidSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookFirstAid1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookFirstAid2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookFirstAid3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookFirstAid4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookFirstAid5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getBookFishingSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookFishing1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookFishing2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookFishing3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookFishing4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookFishing5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getForagingSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookForaging1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookForaging2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookForaging3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookForaging4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookForaging5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getMechanicSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookMechanic1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookMechanic2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookMechanic3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookMechanic4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookMechanic5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getMetalWeldingSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookMetalWelding1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookMetalWelding2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookMetalWelding3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookMetalWelding4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookMetalWelding5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getTailoringSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookTailoring1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookTailoring2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookTailoring3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookTailoring4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookTailoring5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getTrappingSkillBooksItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.BookTrapping1", tonumber(string.format("%.4f", rarity))},
        {"Base.BookTrapping2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BookTrapping3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.BookTrapping4", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.BookTrapping5", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end

-- Базовый набор механика
local function getThunderGasItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Wrench", tonumber(string.format("%.4f", rarity))},
        {"Base.LeadPipe", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.ClubHammer", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.Jack", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.LugWrench", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.WeldingMask", tonumber(string.format("%.4f", rarity * 0.69))},
        {"Base.BlowTorch", tonumber(string.format("%.4f", rarity * 0.68))},
        {"Base.PipeWrench", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end

-- Туризм
local function getTourismItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Yoyo", tonumber(string.format("%.4f", rarity))},
        {"Base.MarchRidgeMap", tonumber(string.format("%.4f", rarity))},
        {"Base.MuldraughMap", tonumber(string.format("%.4f", rarity))},
        {"Base.RiversideMap", tonumber(string.format("%.4f", rarity))},
        {"Base.RosewoodMap", tonumber(string.format("%.4f", rarity))},
        {"Base.WestpointMap", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap1", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap2", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap3", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap4", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap5", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap6", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap7", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap8", tonumber(string.format("%.4f", rarity))},
        {"Base.LouisvilleMap9", tonumber(string.format("%.4f", rarity))},
        {"Base.CDplayer", tonumber(string.format("%.4f", rarity))},
        {"Base.Wallet", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Wallet2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Wallet3", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Wallet4", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.CreditCard", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.PopEmpty", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.Pop2Empty", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.Pop3Empty", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.Spiffo", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.FreddyFox", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.FluffyfootBunny", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.JacquesBeaver", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end

-- Базовый офицант
local function getWaiterItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.CreditCard", tonumber(string.format("%.4f", rarity))},
        {"Base.Money", tonumber(string.format("%.4f", rarity))},
        {"Base.ToiletPaper", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.PlateBlue", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Vinegar", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Teabag2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BakingSoda", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.TomatoPaste", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.Sugar", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.Soysauce", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.Salt", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.RiceVinegar", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Pepper", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.OilOlive", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Mustard", tonumber(string.format("%.4f", rarity * 0.67))},
        {"farming.MayonnaiseFull", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Marinara", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.MapleSyrup", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Ketchup", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Hotsauce", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Hotsauce", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.BouillonCube", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getWaiterDinerItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Напитки
        {"Base.HotDrink", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.HotDrinkRed", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.HotDrinkWhite", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.HotDrinkTea", tonumber(string.format("%.4f", rarity * 0.85))},
        -- Еда
        {"Base.PastaPan", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.PastaPot", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.PotOfSoupRecipe", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.PotOfStew", tonumber(string.format("%.4f", rarity * 0.73))},
        {"Base.RicePot", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.RicePan", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.PanFriedVegetables2", tonumber(string.format("%.4f", rarity * 0.67))},
        {"farming.Salad", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.FruitSalad", tonumber(string.format("%.4f", rarity * 0.67))},
        -- Прочее
        {"Base.Padlock", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedFruitBeverage", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedSardines", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.ButterKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.BreadKnife", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getWaiterPizzaWhirledItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Напитки
        {"Base.HotDrink", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.HotDrinkRed", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.HotDrinkWhite", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.HotDrinkTea", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Beverage2", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Beverage", tonumber(string.format("%.4f", rarity * 0.85))},
        -- Еда
        {"Base.PizzaRecipe", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Toast", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.WafflesRecipe", tonumber(string.format("%.4f", rarity * 0.95))},
        -- Прочее
        {"Base.Padlock", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedFruitBeverage", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedSardines", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.ButterKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.BreadKnife", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getWaiterSpiffoItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Напитки
        {"Base.HotDrinkSpiffo", tonumber(string.format("%.4f", rarity * 0.95))},
        -- Еда
        {"Base.BurgerRecipe", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Toast", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.WafflesRecipe", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.PotatoPancakes", tonumber(string.format("%.4f", rarity * 0.95))},
        -- Прочее
        {"Base.Padlock", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedFruitBeverage", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedSardines", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.ButterKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.BreadKnife", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end
local function getWaiterTacoDelPanchoItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Напитки
        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.BeerCan", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Pop2", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Pop", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * 0.95))},
        -- Еда
        {"Base.Baguette", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.TacoShell", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Tortilla", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.TortillaChips", tonumber(string.format("%.4f", rarity * 0.95))},
        -- Прочее
        {"Base.Padlock", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedFruitBeverage", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.CannedSardines", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.ButterKnife", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.BreadKnife", tonumber(string.format("%.4f", rarity * 0.67))},
    }
    return items
end

-- Выжевшие
local function getSurvivalistItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Напитки
        {"Base.Pot", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.EmptyJar", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.MugSpiffo", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * 0.95))},

        {"Base.WaterBleachBottle", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.WaterBowl", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.FullKettle", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.WaterSaucepan", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.WaterBottleFull", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.WaterPopBottle", tonumber(string.format("%.4f", rarity * 0.85))},
        {"farming.RemouladeWaterFull", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.WineWaterFull", tonumber(string.format("%.4f", rarity * 0.85))},

        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.BeerCan", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.WhiskeyFull", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.JuiceBox", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.Milk", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.PopBottle", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.Pop", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.Pop2", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.Wine", tonumber(string.format("%.4f", rarity * 0.58))},
        {"Base.Wine2", tonumber(string.format("%.4f", rarity * 0.58))},

        {"Base.Bleach", tonumber(string.format("%.4f", rarity * 0.55))},

        -- Еда
        {"Base.BerryPoisonIvy", tonumber(string.format("%.4f", rarity * 2))},

        {"Base.BerryGeneric1", tonumber(string.format("%.4f", rarity * 1.2))},
        {"Base.BerryGeneric2", tonumber(string.format("%.4f", rarity * 1.2))},
        {"Base.BerryGeneric3", tonumber(string.format("%.4f", rarity * 1.2))},
        {"Base.BerryGeneric4", tonumber(string.format("%.4f", rarity * 1.2))},
        {"Base.BerryGeneric5", tonumber(string.format("%.4f", rarity * 1.2))},
        {"Base.BerryBlack", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.BerryBlue", tonumber(string.format("%.4f", rarity * 1))},

        {"Base.BeautyBerry", tonumber(string.format("%.4f", rarity * 98))},
        {"Base.WinterBerry", tonumber(string.format("%.4f", rarity * 98))},

        {"Base.MushroomGeneric1", tonumber(string.format("%.4f", rarity * 98))},
        {"Base.MushroomGeneric2", tonumber(string.format("%.4f", rarity * 98))},
        {"Base.MushroomGeneric3", tonumber(string.format("%.4f", rarity * 98))},
        {"Base.MushroomGeneric4", tonumber(string.format("%.4f", rarity * 98))},
        {"Base.MushroomGeneric5", tonumber(string.format("%.4f", rarity * 98))},
        {"Base.MushroomGeneric6", tonumber(string.format("%.4f", rarity * 98))},
        {"Base.MushroomGeneric7", tonumber(string.format("%.4f", rarity * 98))},

        {"Base.Baguette", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.TacoShell", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Tortilla", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.TortillaChips", tonumber(string.format("%.4f", rarity * 0.95))},

        {"Base.TinnedBeans", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedCarrots2", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedChili", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedCorn", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedFruitCocktail", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedMushroomSoup", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedPeaches", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedPeas", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedPineapple", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedPotato2", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedSardines", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.TinnedSoup", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedBolognese", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedTomato2", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.TunaTin", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.Dogfood", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedMilk", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedFruitBeverage", tonumber(string.format("%.4f", rarity * 0.87))},
        {"Base.CannedCornedBeef", tonumber(string.format("%.4f", rarity * 0.67))},
        -- Прочее
        {"Base.Garbagebag", tonumber(string.format("%.4f", rarity * 0.97))},
        {"Base.Cooler", tonumber(string.format("%.4f", rarity * 0.92))},
        {"Base.Plasticbag", tonumber(string.format("%.4f", rarity * 0.92))},

        {"Base.TinOpener", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Scissors", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Bag_FannyPackFront", tonumber(string.format("%.4f", rarity * 0.67))},
        {"Base.Bag_FannyPackBack", tonumber(string.format("%.4f", rarity * 0.67))},

        {"Base.SeedBag", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.PistolCase1", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.PistolCase2", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.PistolCase3", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.RevolverCase1", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.RevolverCase2", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.RevolverCase3", tonumber(string.format("%.4f", rarity * 0.55))},
    }
    return items
end

-- Деньги, куча денег, много денег для стриптизерш!!!
local function getMoneyItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Money", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Money", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Wallet", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.Wallet2", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.Wallet3", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.Wallet4", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.CreditCard", tonumber(string.format("%.4f", rarity * 0.55))},
    }
    return items
end

-- Гитары для музыкантов
local function getGuitarItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.GuitarElectricBassBlack", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBassBlue", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBassRed", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBlack", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBlue", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricRed", tonumber(string.format("%.4f", rarity * 0.75))},
    }
    return items
end

-- Лут священника
local function getPriestItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Book", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.ComicBook", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.MagazineCrossword1", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.MagazineCrossword2", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.MagazineCrossword3", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.Magazine", tonumber(string.format("%.4f", rarity * 0.75))},
    }
    return items
end

-- Лут сваршика
local function getMetalworkerItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Aluminum", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.NailsBox", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.ScrewsBox", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Charcoal", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.SheetMetal", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.PropaneTank", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.SmallSheetMetal", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.WeldingRods", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.BlowTorch", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.Base.WeldingMask", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * 0.7))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * 0.7))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * 0.7))},
    }
    return items
end

-- Лут механика
local function getMechanicItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Scotchtape", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.DuctTape", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.DuctTape", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.EngineParts", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.PetrolBleachBottle", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.WhiskeyPetrol", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.PetrolPopBottle", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.WinePetrol", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.WaterBottlePetrol", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * 0.7))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * 0.7))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * 0.7))},
    }
    return items
end

-- Лут строителя
local function getConstructionWorkerItems(rarity)
    rarity = rarity or 3;
    local items = {
        {"Base.Scotchtape", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Tarp", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.DuctTape", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.DuctTape", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.UnusableWood", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.UnusableWood", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.UnusableWood", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Dirtbag", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.PlasterPowder", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.ConcretePowder", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Nails", tonumber(string.format("%.4f", rarity * 0.7))},
        {"Base.Nails", tonumber(string.format("%.4f", rarity * 0.7))},
        {"Base.NailsBox", tonumber(string.format("%.4f", rarity * 0.7))},
    }
    return items
end

-- Оружие - Ближнее
local function getMeleeWeaponsAxesItems(rarity) --Топоры
    rarity = rarity or 3;
    local items = {
        {"Base.HandAxe", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Axe", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.PickAxe", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.AxeStone", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.WoodAxe", tonumber(string.format("%.4f", rarity * 0.55))},
    }
    return items
end
local function getMeleeWeaponsLongBluntsItems(rarity) -- Длинное дробящее
    rarity = rarity or 3;
    local items = {
        {"Base.GuitarAcoustic", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Broom", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.CanoePadel", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.CanoePadelX2", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.BadmintonRacket", tonumber(string.format("%.4f", rarity * 0.85))},

        {"Base.BarBell", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBassBlack", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBassBlue", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBassRed", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBlack", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricBlue", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.GuitarElectricRed", tonumber(string.format("%.4f", rarity * 0.75))},

        {"Base.FishingRod", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.FishingRodTwineLine", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.CraftedFishingRod", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.CraftedFishingRodTwineLine", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.FishingRodBreak", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Trumpet", tonumber(string.format("%.4f", rarity * 0.70))},

        {"Base.AxeStone", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.GardenHoe", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Golfclub", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.HockeyStick", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.IceHockeyStick", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Keytar", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.LaCrosseStick", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.LeafRake", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Plank", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Poolcue", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Rake", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Saxophone", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Shovel", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Shovel2", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Crowbar", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.TennisRacket", tonumber(string.format("%.4f", rarity * 0.65))},


        {"Base.BaseballBat", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.BaseballBatNails", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.PlankNail", tonumber(string.format("%.4f", rarity * 0.55))},

        {"Base.Sledgehammer", tonumber(string.format("%.4f", rarity * 0.45))},
        {"Base.Sledgehammer2", tonumber(string.format("%.4f", rarity * 0.45))},
        {"Base.SnowShovel", tonumber(string.format("%.4f", rarity * 0.45))},
    }
    return items
end
local function getMeleeWeaponsShortBluntsItems(rarity) --Короткое дробящее
    rarity = rarity or 3;
    local items = {
        {"Base.BallPeenHammer", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.MetalBar", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.MetalPipe", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Pan", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Plunger", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Wrench", tonumber(string.format("%.4f", rarity * 0.95))},

        {"Base.Banjo", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.GridlePan", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.RollingPin", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.WoodenMallet", tonumber(string.format("%.4f", rarity * 0.85))},

        {"Base.ClubHammer", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.Flute", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.PipeWrench", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.Saucepan", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.TableLeg", tonumber(string.format("%.4f", rarity * 0.75))},

        {"Base.Drumstick", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.DumbBell", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.Hammer", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.PickAxeHandleSpiked", tonumber(string.format("%.4f", rarity * 0.65))},

        {"Base.ChairLeg", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.HammerStone", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.Violin", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.LeadPipe", tonumber(string.format("%.4f", rarity * 0.55))},
        {"Base.PickAxeHandle", tonumber(string.format("%.4f", rarity * 0.55))},

        {"Base.Nightstick", tonumber(string.format("%.4f", rarity * 0.45))},
    }
    return items
end
local function getMeleeWeaponsLongBladesItems(rarity) --Длинное режущее
    rarity = rarity or 3;
    local items = {
        {"Base.Machete", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Katana", tonumber(string.format("%.4f", rarity * 0.15))},
    }
    return items
end
local function getMeleeWeaponsShortBladesItems(rarity) --Короткое режущее
    rarity = rarity or 3;
    local items = {
        {"Base.BreadKnife", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.ButterKnife", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Fork", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.HandFork", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.HandScythe", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.IcePick", tonumber(string.format("%.4f", rarity * 0.95))},
        {"Base.Spoon", tonumber(string.format("%.4f", rarity * 0.95))},

        {"Base.HuntingKnife", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.MeatCleaver", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.SmashedBottle", tonumber(string.format("%.4f", rarity * 0.85))},
        {"Base.Stake", tonumber(string.format("%.4f", rarity * 0.85))},

        {"Base.LetterOpener", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.Scissors", tonumber(string.format("%.4f", rarity * 0.75))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.75))},

        {"Base.FlintKnife", tonumber(string.format("%.4f", rarity * 0.65))},
        {"Base.HandShovel", tonumber(string.format("%.4f", rarity * 0.65))},

        {"Base.Scalpel", tonumber(string.format("%.4f", rarity * 0.15))},
    }
    return items
end

-- Оружие стрелковое
local function getShotgunItems(rarity) --Дробовики
    rarity = rarity or 3;
    local items = {
        {"Base.DoubleBarrelShotgun", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.DoubleBarrelShotgunSawnoff", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Shotgun", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Shotgun", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.ShotgunShells", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.ShotgunShellsBox", tonumber(string.format("%.4f", rarity * 0.75))}
    }
    return items
end
local function getHandguns44MagnumPistolItems(rarity) --44 магнум пистолет
    rarity = rarity or 3;
    local items = {
        {"Base.Pistol3", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.44Clip", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.Laser", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * 0.50))}
    }
    return items
end
local function getHandguns44MagnumRevolverItems(rarity) --44 магнум револьвер
    rarity = rarity or 3;
    local items = {
        {"Base.Revolver_Long", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * 0.50))}
    }
    return items
end
local function getHandguns45AutoPistolItems(rarity) --45 авто пистолет
    rarity = rarity or 3;
    local items = {
        {"Base.Pistol2", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Bullets45", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.45Clip", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.Laser", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * 0.20))}
    }
    return items
end
local function getHandguns38SpecialRevolverItems(rarity) --38 спешл револьвер
    rarity = rarity or 3;
    local items = {
        {"Base.Revolver_Short", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Bullets38", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.Bullets38Box", tonumber(string.format("%.4f", rarity * 0.20))},
    }
    return items
end
local function getHandguns45AutoRevolverItems(rarity) --45 авто револьвер
    rarity = rarity or 3;
    local items = {
        {"Base.Revolver_Short", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Bullets45", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * 0.20))}
    }
    return items
end
local function getHandguns9mmPistolItems(rarity) --9мм пистолет
    rarity = rarity or 3;
    local items = {
        {"Base.Pistol", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.Bullets9mm", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.9mmClip", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.Laser", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.Bullets9mmBox", tonumber(string.format("%.4f", rarity * 0.50))}
    }
    return items
end
local function getHandguns308RifleM14Items(rarity) --308 винтовка М14
    rarity = rarity or 3;
    local items = {
        {"Base.AssaultRifle2", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.308Bullets", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.M14Clip", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.x2Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x4Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x8Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Laser", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RecoilPad", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.308Box", tonumber(string.format("%.4f", rarity * 0.50))}
    }
    return items
end
local function getHandguns556RifleM16Items(rarity) --5.56 винтовка М16
    rarity = rarity or 3;
    local items = {
        {"Base.AssaultRifle", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.556Bullets", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.556Clip", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.x2Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x4Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x8Scope", tonumber(string.format("%.4f", rarity * 0.70))},   
        {"Base.Laser", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RecoilPad", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.556Box", tonumber(string.format("%.4f", rarity * 0.50))}
    }
    return items
end
local function getHandguns223RifleMSR700Items(rarity) --223 винтовка МSR700
    rarity = rarity or 3;
    local items = {
        {"Base.VarmintRifle", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.223Bullets", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.223Clip", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.x2Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x4Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x8Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.FiberglassStock", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RecoilPad", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.223Box", tonumber(string.format("%.4f", rarity * 0.50))}
    }
    return items
end
local function getHandguns308RifleMSR788Items(rarity) --308 винтовка МSR788
    rarity = rarity or 3;
    local items = {
        {"Base.HuntingRifle", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.308Bullets", tonumber(string.format("%.4f", rarity * 1))},
        {"Base.308Clip", tonumber(string.format("%.4f", rarity * 0.8))},
        {"Base.x2Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x4Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.x8Scope", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.FiberglassStock", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RecoilPad", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.RedDot", tonumber(string.format("%.4f", rarity * 0.70))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * 0.50))},
        {"Base.308Box", tonumber(string.format("%.4f", rarity * 0.50))}
    }
    return items
end

return {
    -- Медецина
    getBandagesItems = getBandagesItems,
    getDisinfectantsItems = getDisinfectantsItems,
    getHerbsItems = getHerbsItems,
    getMedicalEquipmentItems = getMedicalEquipmentItems,
    getPharmaceuticalsItems = getPharmaceuticalsItems,

    getItems = getItems,
    -- Садоводство
    getGardeningItems = getGardeningItems,

    -- Уборка
    getCleaningItems = getCleaningItems,

    -- Оффисные принадлежности
    getStationeryItems = getStationeryItems,

    -- Противопожарные средства
    getExtinguisherItems = getExtinguisherItems,

    -- Ловушки / кемпинг
    getCampingItems = getCampingItems,
    getTrappingItems = getTrappingItems,

    -- Коммуникации
    getCommunicationsBaseItems = getCommunicationsBaseItems,
    getCommunicationsTacticalItems = getCommunicationsTacticalItems,

    -- Обучающая литература / учитель
    getCarpentrySkillBooksItems = getCarpentrySkillBooksItems,
    getCookingSkillBooksItems = getCookingSkillBooksItems,
    getElectricianSkillBooksItems = getElectricianSkillBooksItems,
    getFarmingSkillBooksItems = getFarmingSkillBooksItems,
    getFirstAidSkillBooksItems = getFirstAidSkillBooksItems,
    getBookFishingSkillBooksItems = getBookFishingSkillBooksItems,
    getForagingSkillBooksItems = getForagingSkillBooksItems,
    getMechanicSkillBooksItems = getMechanicSkillBooksItems,
    getMetalWeldingSkillBooksItems = getMetalWeldingSkillBooksItems,
    getTailoringSkillBooksItems = getTailoringSkillBooksItems,
    getTrappingSkillBooksItems = getTrappingSkillBooksItems,

    -- Базовый набор механика
    getThunderGasItems = getThunderGasItems,

    -- Туризм
    getTourismItems = getTourismItems,

    -- Офицанты
    getWaiterItems = getWaiterItems,
    getWaiterDinerItems = getWaiterDinerItems,
    getWaiterPizzaWhirledItems = getWaiterPizzaWhirledItems,
    getWaiterSpiffoItems = getWaiterSpiffoItems,
    getWaiterTacoDelPanchoItems = getWaiterTacoDelPanchoItems,

    -- Выживший
    getSurvivalistItems = getSurvivalistItems,

    -- Оружие ближный Большой
    getMeleeWeaponsAxesItems = getMeleeWeaponsAxesItems,
    getMeleeWeaponsLongBluntsItems = getMeleeWeaponsLongBluntsItems,
    getMeleeWeaponsShortBluntsItems = getMeleeWeaponsShortBluntsItems,
    getMeleeWeaponsLongBladesItems = getMeleeWeaponsLongBladesItems,
    getMeleeWeaponsShortBladesItems = getMeleeWeaponsShortBladesItems,

    -- Оружие стрелковое пистолеты
    getHandguns44MagnumPistolItems = getHandguns44MagnumPistolItems,
    getHandguns44MagnumRevolverItems = getHandguns44MagnumRevolverItems,
    getHandguns45AutoPistolItems = getHandguns45AutoPistolItems,
    getHandguns38SpecialRevolverItems = getHandguns38SpecialRevolverItems,
    getHandguns45AutoRevolverItems = getHandguns45AutoRevolverItems,
    getHandguns9mmPistolItems = getHandguns9mmPistolItems,

    -- Дробовики
    getShotgunItems = getShotgunItems,

    -- Винтовки
    getHandguns308RifleM14Items = getHandguns308RifleM14Items,
    getHandguns556RifleM16Items = getHandguns556RifleM16Items,
    getHandguns223RifleMSR700Items = getHandguns223RifleMSR700Items,
    getHandguns308RifleMSR788Items = getHandguns308RifleMSR788Items,


    -- Деньги
    getMoneyItems = getMoneyItems,

    -- Гитары
    getGuitarItems = getGuitarItems,

    -- Священник и его газеты
    getPriestItems = getPriestItems,

    -- Лут сваршика
    getMetalworkerItems = getMetalworkerItems,

    -- Лут механика
    getMechanicItems = getMechanicItems,

    -- Лут строителя
    getConstructionWorkerItems = getConstructionWorkerItems,

    -- Тестовые предметы
    getKeysItems = getKeysItems,
}