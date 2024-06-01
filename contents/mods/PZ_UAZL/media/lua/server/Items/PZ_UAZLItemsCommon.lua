local UAZLIC = {}

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
-- ЗОМБИ ЖЕНЩИНЫ
-- ============================================================
function UAZLIC:getInventoryfemaleItems(rarity)
    rarity = rarity or 3;

    local items = {
        -- Еда/Вода
        {"Base.LicoriceRed", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.CandyCorn", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.ChocolateChips", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.ChocolateCoveredCoffeeBeans", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.WhiskeyWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MayonnaiseWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.RemouladeWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.WineWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.WaterBottleFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.GummyBears", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.GummyWorms", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.HardCandies", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.JellyBeans", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Jujubes", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Lollipop", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.MintCandy", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Peppermint", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.RockCandy", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.JuiceBox", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps2", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps3", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps4", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Pop", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Pop2", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.PopBottle", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Baguette", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Bread", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.BeerCan", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.BeefJerky", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.CannedCornedBeef", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- -- Материалы
        {"Base.Scotchtape", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.DuctTape", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Glue", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Woodglue", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.RippedSheets", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Thread", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Twigs", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Sheet", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- -- Оружие
        {"Base.ChairLeg", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.TableLeg", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BreadKnife", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.SmashedBottle", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.ButterKnife", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Fork", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Sledgehammer", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PickAxeHandle", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- -- литература
        --     --
        -- -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MagazineWordsearch1", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MagazineWordsearch2", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MagazineWordsearch3", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Newspaper", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        -- -- Прочее
        {"Base.ToiletPaper", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Perfume", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Toothbrush", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Toothpaste", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end
-- ============================================================
-- ЗОМБИ МУЖЧИНЫ
-- ============================================================
function UAZLIC:getInventorymaleItems(rarity)
    rarity = rarity or 3;

    local items = {
        -- Еда/Вода
        {"Base.LicoriceRed", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.CandyCorn", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.ChocolateChips", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.ChocolateCoveredCoffeeBeans", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.WhiskeyWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MayonnaiseWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.RemouladeWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.WineWaterFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.WaterBottleFull", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.GummyBears", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.GummyWorms", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.HardCandies", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.JellyBeans", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Jujubes", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Lollipop", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.MintCandy", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Peppermint", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.RockCandy", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.JuiceBox", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps2", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps3", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Crisps4", tonumber(string.format("%.4f", rarity * SR.ExtraRare))},
        {"Base.Pop", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Pop2", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Pop3", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.PopBottle", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Baguette", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Bread", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.Chocolate", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.BeerCan", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.BeefJerky", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.CannedCornedBeef", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Материалы
        {"Base.Scotchtape", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.DuctTape", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Glue", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Woodglue", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.RippedSheets", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Thread", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Twigs", tonumber(string.format("%.4f", rarity * SR.Elite))},
        {"Base.Sheet", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- Оружие
        {"Base.ChairLeg", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.TableLeg", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.BreadKnife", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.SmashedBottle", tonumber(string.format("%.4f", rarity * SR.Common))},
        {"Base.ButterKnife", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.Fork", tonumber(string.format("%.4f", rarity * SR.Uncommon))},
        {"Base.KitchenKnife", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Sledgehammer", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        {"Base.PickAxeHandle", tonumber(string.format("%.4f", rarity * SR.Legendary))},
        -- литература
            --
        -- Журналы
        {"Base.HottieZ", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MagazineWordsearch1", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MagazineWordsearch2", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.MagazineWordsearch3", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        {"Base.Newspaper", tonumber(string.format("%.4f", rarity * SR.VeryRare))},
        -- Прочее
        {"Base.ToiletPaper", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Razor", tonumber(string.format("%.4f", rarity * SR.Rare))},
        {"Base.Cologne", tonumber(string.format("%.4f", rarity * SR.Common))},
    }
    return items
end

return UAZLIC