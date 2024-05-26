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

return UAZLIB
