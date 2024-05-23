local UAZLIP = {}

local SR = {
    Common = 1,
    Uncommon = 0.8,
    Rare = 0.7,
    VeryRare = 0.6,
    ExtraRare = 0.4,
    Elite = 0.3,
    Legendary = 0.1,
}

-- ============================================================
-- ЗОМБИ С ОРУЖИЕМ БЛИЖНЕГО БОЯ
-- ============================================================

-- Лут строителя
function UAZLIP:getConstructionWorkerItems(rarity)
    rarity = rarity or 3;

    local items = {
        -- Еда
        {"Base.BurgerRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BurritoRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Crisps", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps3", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps4", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BaguetteSandwich", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.TacoRecipe", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.EggOmelette", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.GranolaBar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.PaintbucketEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Nails", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Screws", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.UnusableWood", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Scotchtape", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.DuctTape", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Glue", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Woodglue", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.NailsBox", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.ScrewsBox", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Dirtbag", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Hinge", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Doorknob", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.ConcretePowder", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.PlasterPowder", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.PaintBlack", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintBlue", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintBrown", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintCyan", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintGreen", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintGrey", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintLightBlue", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintLightBrown", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintOrange", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintPink", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintPurple", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintRed", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintTurquoise", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintWhite", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PaintYellow", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
        {"Base.Plank", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PickAxeHandle", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.ClubHammer", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PlankNail", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Hammer", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BallPeenHammer", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Crowbar", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.Sledgehammer", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.Sledgehammer2", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- литература
        {"Base.BookCarpentry1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BookCarpentry2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BookCarpentry3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BookCarpentry4", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BookCarpentry5", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch3", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Newspaper", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Прочее
        {"Base.ToiletPaper", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

-- Лут механика
function UAZLIP:getMechanicItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.BurgerRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BurritoRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Crisps", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps3", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps4", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BaguetteSandwich", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.TacoRecipe", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.EggOmelette", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.GranolaBar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.Screws", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.LightBulb", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.LightBulbRed", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbGreen", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbBlue", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbYellow", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbCyan", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbMagenta", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbOrange", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbPurple", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.LightBulbPink", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.PetrolBleachBottle", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.WhiskeyPetrol", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.PetrolPopBottle", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.WinePetrol", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.WaterBottlePetrol", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Оружие
        {"Base.MetalBar", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MetalPipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Screwdriver", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Wrench", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- литература
        {"Base.BookMechanic1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BookMechanic2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BookMechanic3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BookMechanic4", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BookMechanic5", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch3", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Newspaper", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MechanicMag1", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.MechanicMag2", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.MechanicMag3", tonumber(string.format("%.4f", rarity * SR.Elite))},
        -- Прочее
        {"Base.ToiletPaper", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.RippedSheets", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.DenimStrips", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Sheet", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
    }
    return items
end

-- Лут сваршика
function UAZLIP:getMetalworkerItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.BurgerRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BurritoRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Crisps", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps3", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Crisps4", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BaguetteSandwich", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.TacoRecipe", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.EggOmelette", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.GranolaBar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.TinCanEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Aluminum", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.ScrapMetal", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.SheetMetal", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.SmallSheetMetal", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.WeldingRods", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.PropaneTank", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Оружие
        {"Base.LeadPipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MetalBar", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MetalPipe", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- литература
        {"Base.BookMetalWelding1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BookMetalWelding2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BookMetalWelding3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BookMetalWelding4", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BookMetalWelding5", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch3", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Newspaper", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MetalworkMag1", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.MetalworkMag2", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.MetalworkMag3", tonumber(string.format("%.4f", rarity * SR.Elite))},
        -- Прочее
        {"Base.ToiletPaper", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.RippedSheets", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.DenimStrips", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Sheet", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
    }
    return items
end

-- Лут кемпера
function UAZLIP:getCamperItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.BerryPoisonIvy", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric3", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric4", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric5", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.DeadBird", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.DeadMouse", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.DeadRat", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.DeadSquirrel", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.DeadRabbit", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.GranolaBar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.Twigs", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.TentPeg", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.TreeBranch", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.RippedSheets", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Tarp", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.LeatherStrips", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pillow", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.PercedWood", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Rope", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"camping.CampfireKit", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"camping.CampingTentKit", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
        {"Base.FlintKnife", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.SpearCrafted", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Stake", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.WoodenLance", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.HammerStone", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.AxeStone", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- литература
            -- 
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MagazineWordsearch3", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Newspaper", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.RadioMag1", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.RadioMag2", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.RadioMag3", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Прочее
            -- 
    }
    return items
end

-- Лут фермера
function UAZLIP:getFarmerItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.Cabbage", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Corn", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Daikon", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Eggplant", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.PepperHabanero", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.CompostBag", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Fertilizer", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"farming.GardeningSprayMilk", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"farming.GardeningSprayCigarettes", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
        {"Base.Rake", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.GardenFork", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
        {"Base.BookFarming1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BookFarming2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BookFarming3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BookFarming4", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BookFarming5", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Прочее
        {"Base.PopEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Pop2Empty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Pop3Empty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BeerCanEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

-- Лут Пожарного
function UAZLIP:getFiremanFullSuitItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
            --
        -- Материалы
        {"Base.Hat_GasMask", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Extinguisher", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Оружие
        {"Base.HandAxe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Axe", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
            --
        -- Журналы
            --
        -- Прочее
        {"Base.ToyBear", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.DogChew", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Leash", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

-- Лут Рыбака
function UAZLIP:getFishermanItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.Bass", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Catfish", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BaitFish", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.FishRoe", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Crappie", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Perch", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Pike", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Crayfish", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BaitFish", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Oysters", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Panfish", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Trout", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Shrimp", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.Shrimp", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.Squid", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Материалы
        {"Base.AmericanLadyCaterpillar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BandedWoolyBearCaterpillar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.MonarchCaterpillar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.SawflyLarva", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.SilkMothCaterpillar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.SwallowtailCaterpillar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Centipede", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Centipede2", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Cockroach", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Cricket", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Grasshopper", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Millipede", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Pillbug", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        -- Оружие
        {"Base.FishingRod", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.CraftedFishingRod", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.FishingRodBreak", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
            --
        -- Журналы
            --
        -- Прочее
        {"Base.Cooler", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

-- Лут заключенного
function UAZLIP:getInmateItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.Toast", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Материалы
        {"Base.Money", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Money", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Money", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Money", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Оружие
        {"Base.LetterOpener", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Crowbar", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
            --
        -- Журналы
            --
        -- Прочее
        {"Base.BeerCanEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

-- Лут оффысных работников
function UAZLIP:getOfficeWorkerItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.HotDrink", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HotDrinkRed", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.ChickenFoot", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.Paperclip", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Staples", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Earbuds", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.CardDeck", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Stapler", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.PaperclipBox", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Оружие
        {"Base.LetterOpener", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.ClosedUmbrellaBlue", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.ClosedUmbrellaRed", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.ClosedUmbrellaBlack", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.ClosedUmbrellaWhite", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
            --
        -- Журналы
            --
        -- Прочее
        {"Base.BeerCanEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

-- ============================================================
-- ЗОМБИ С ОГНЕСТРЕЛОМ
-- ============================================================

-- Лут бандита
function UAZLIP:getBanditItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.WafflesRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Sandwich", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.Screws", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Rope", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"camping.DuctTape", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"camping.Scotchtape", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
        {"Base.BaseballBat", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BaseballBatNails", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PlankNail", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.WoodenLance", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.HammerStone", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- Огнестрел
        {"Base.Pistol3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pistol2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Боеприпасы
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets45", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Bullets45Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- литература
            -- 
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Прочее
            -- 
    }
    return items
end

-- Лут байкера
function UAZLIP:getBikerItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BeerCan", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Pizza", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BurritoRecipe", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Материалы
        {"Base.Screws", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Rope", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"camping.DuctTape", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"camping.Scotchtape", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
        {"Base.BaseballBat", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BaseballBatNails", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PlankNail", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.WoodenLance", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.HammerStone", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- Огнестрел
        {"Base.Revolver_Long", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Боеприпасы
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- литература
            -- 
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Прочее
        {"Base.PopEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Pop2Empty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Pop3Empty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BeerCanEmpty", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

-- Лут Военного
function UAZLIP:getArmyItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.CannedCornedBeef", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Материалы
        {"Radio.WalkieTalkie4", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Radio.WalkieTalkie5", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Оружие
        {"Base.SmokeBomb", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HuntingKnife", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Machete", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Katana", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Огнестрел
        {"Base.Pistol3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pistol2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pistol", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.AssaultRifle2", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        -- Боеприпасы
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets45", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets9mm", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.9mmClip", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.308Bullets", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.M14Clip", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Bullets45Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Bullets9mmBox", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.308Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- литература
            -- 
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Прочее
            -- 
    }
    return items
end

-- Лут Покерного диллера
function UAZLIP:getPokerDealerItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.WhiskeyFull", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Материалы
        {"Radio.Dice", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Radio.CardDeck", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Radio.PokerChips", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Radio.PokerChips", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Оружие
            --
        -- Огнестрел
        {"Base.DoubleBarrelShotgun", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Боеприпасы
        {"Base.ShotgunShells", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.ShotgunShellsBox", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- литература
            -- 
        -- Журналы
            --
        -- Прочее
            -- 
    }
    return items
end

-- Лут Охотника
function UAZLIP:getHunterItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.CannedMushroomSoup", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.CannedCorn", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.CannedCarrots2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.DeadBird", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.DeadMouse", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.DeadRat", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.DeadSquirrel", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.DeadRabbit", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Материалы
        {"Radio.TrapSnare", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Radio.TrapStick", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Radio.TrapMouse", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Radio.TrapCrate", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Radio.TrapBox", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Radio.TrapCage", tonumber(string.format("%.4f", rarity * SR.Elite))},
        -- Оружие
        {"Base.HuntingKnife", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Огнестрел
        {"Base.DoubleBarrelShotgun", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.VarmintRifle", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.HuntingRifle", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Боеприпасы
        {"Base.ShotgunShells", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.223Bullets", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.308Bullets", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.ShotgunShellsBox", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.223Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.308Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- литература
        {"Base.BookTrapping1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BookTrapping2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BookTrapping3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BookTrapping4", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BookTrapping5", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Журналы
        {"Base.HuntingMag1", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.HuntingMag2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.HuntingMag3", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- Прочее
            -- 
    }
    return items
end

-- Лут Деревенщины
function UAZLIP:getRedneck(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
            --
        -- Материалы
            --
        -- Оружие
            --
        -- Огнестрел
        {"Base.DoubleBarrelShotgun", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Боеприпасы
        {"Base.ShotgunShells", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.ShotgunShellsBox", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- литература
            --
        -- Журналы
            --
        -- Прочее
            -- 
    }
    return items
end

-- Лут выжевщего
function UAZLIP:getSurvivalistItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Напитки
        {"Base.Pot", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.EmptyJar", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.MugSpiffo", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.WaterBleachBottle", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.WaterBowl", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.FullKettle", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.WaterSaucepan", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.WaterBottleFull", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.WaterPopBottle", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.WineWaterFull", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"farming.RemouladeWaterFull", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.BeerBottle", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BeerCan", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.WhiskeyFull", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.JuiceBox", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Milk", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.PopBottle", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Pop", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pop2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Wine", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Wine2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Bleach", tonumber(string.format("%.4f", rarity * SR.Elite))},
        -- Еда
        {"Base.BerryPoisonIvy", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric3", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric4", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryGeneric5", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BerryBlack", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BerryBlue", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BeautyBerry", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.WinterBerry", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.MushroomGeneric1", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.MushroomGeneric2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.MushroomGeneric3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.MushroomGeneric4", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.MushroomGeneric5", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.MushroomGeneric6", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.MushroomGeneric7", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Baguette", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.TacoShell", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Tortilla", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.TortillaChips", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.TinnedBeans", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.CannedCarrots2", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.CannedChili", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.CannedCorn", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.CannedFruitCocktail", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.CannedMushroomSoup", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.CannedPeaches", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.CannedPeas", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.CannedPineapple", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.CannedPotato2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.CannedSardines", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.TinnedSoup", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.CannedBolognese", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.CannedTomato2", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.TunaTin", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Dogfood", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.CannedMilk", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.CannedFruitBeverage", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.CannedCornedBeef", tonumber(string.format("%.4f", rarity * SR.Elite))},
        -- Материалы
        {"Base.Garbagebag", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Cooler", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Plasticbag", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.TinOpener", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Scissors", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Bag_FannyPackFront", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Bag_FannyPackBack", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.SeedBag", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.PistolCase1", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.PistolCase2", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.PistolCase3", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.RevolverCase1", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.RevolverCase2", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.RevolverCase3", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Оружие
        {"Base.SmokeBomb", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HuntingKnife", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Machete", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Katana", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Огнестрел
        {"Base.Pistol3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pistol2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pistol", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.AssaultRifle2", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.AssaultRifle", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        -- Боеприпасы
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets45", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets9mm", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.556Bullets", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.9mmClip", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.556Clip", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.308Bullets", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.M14Clip", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Bullets45Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Bullets9mmBox", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.308Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.556Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
    }
    return items
end

-- ============================================================
-- ЗОМБИ ПОВАРЫ/ОФИЦАНТЫ
-- ============================================================

-- лут Шеф повара общий
function UAZLIP:getCook_GenericItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.PastaPot", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PastaPan", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PanFriedVegetables", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.GriddlePanFriedVegetables", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PotOfSoup", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Материалы
        {"Base.BouillonCube", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.SugarBrown", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Sugar", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Hotsauce", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Ketchup", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Lard", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.TomatoPaste", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Margarine", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.OilOlive", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Pepper", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.RiceVinegar", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.OilVegetable", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Salt", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"camping.Soysauce", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
        {"Base.WoodenMallet", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Pan", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.GridlePan", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Plunger", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.RollingPin", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Saucepan", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
        {"Base.BookCooking1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BookCooking2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BookCooking3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BookCooking4", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BookCooking5", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Журналы
        {"Base.CookingMag1", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.CookingMag2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Book", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Прочее
            -- 
    }
    return items
end

-- Лут Шеф повара спиффо
function UAZLIP:getCook_SpiffosItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
        {"Base.BurgerRecipe", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HotDrinkSpiffo", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Pie", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Материалы
        {"Base.MincedMeat", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.MeatPatty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BeefJerky", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Оружие
            --
        -- Огнестрел
        {"Base.Pistol3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Pistol2", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Боеприпасы
        {"Base.Bullets44", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets45", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bullets44Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Bullets45Box", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- литература
            --
        -- Журналы
            --
        -- Прочее
            -- 
    }
    return items
end

-- ============================================================
-- ЗОМБИ МЕДИКИ
-- ============================================================

-- Лут Водителя скорой помоши
function UAZLIP:getAmbulanceDriverItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
            --
        -- Материалы
        {"Base.Bandaid", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.RippedSheetsDirty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.RippedSheets", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.AlcoholRippedSheets", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BandageDirty", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Splint", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Bandage", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"camping.AlcoholBandage", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
            --
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
            -- 
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Прочее
            -- 
    }
    return items
end

-- Лут Доктора
function UAZLIP:getDoctorItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
            --
        -- Материалы
        {"Base.AlcoholRippedSheets", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BandageDirty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Splint", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bandage", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"camping.AlcoholBandage", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.Disinfectant", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.AlcoholedCottonBalls", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.SutureNeedle", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.SutureNeedleHolder", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.Tweezers", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Оружие
        {"camping.Scalpel", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
        {"Base.BookFirstAid1", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BookFirstAid2", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.BookFirstAid3", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.BookFirstAid4", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.BookFirstAid5", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        -- Журналы
            --
        -- Прочее
        {"Base.Bag_DoctorBag", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
    }
    return items
end

-- Лут Медсестры
function UAZLIP:getNurseItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
            --
        -- Материалы
        {"Base.AlcoholRippedSheets", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BandageDirty", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Splint", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Bandage", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"camping.AlcoholBandage", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.Disinfectant", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.AlcoholedCottonBalls", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.SutureNeedle", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.SutureNeedleHolder", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"camping.Tweezers", tonumber(string.format("%.4f", rarity * SR.Rare))},
        -- Оружие
            --
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
            --
        -- Журналы
        {"camping.TVMagazine", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        -- Прочее
        {"camping.Handbag", tonumber(string.format("%.4f", rarity * SR.Rare))},
    }
    return items
end

-- Лут Фармацевта
-- Лут Водителя скорой помоши
function UAZLIP:getPharmacistItems(rarity)
    rarity = rarity or 3;
    local items = {
        -- Еда
            --
        -- Материалы
        {"Base.PillsSleepingTablets", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.Cigarettes", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PillsBeta", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.PillsAntiDep", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Splint", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Pills", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"camping.Antibiotics", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
            --
        -- Огнестрел
            --
        -- Боеприпасы
            --
        -- литература
            -- 
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.HerbalistMag", tonumber(string.format("%.4f", rarity * SR.Common))},
        -- Прочее
            -- 
    }
    return items
end

-- ============================================================
-- ЗОМБИ 
-- ============================================================


return UAZLIP