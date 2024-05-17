require 'Items/SuburbsDistributions'
require 'Items/ProceduralDistributions'
require 'PZ_UAZL-Items'

LootRarity = {}
LootRarity.Common = 15
LootRarity.Uncommon = 8
LootRarity.Rare = 3
LootRarity.Elite = 1
LootRarity.VeryRare = 0.5
LootRarity.ExtraRare = 0.01


local suburbsDistribution = {
    -- Общее
    all = {
        -- Контейнер
        crate = {
            items = getItems(LootRarity.VeryRare)
        },
        -- Инвентарь зомби женщины
        inventoryfemale = {
            items = {"SHF.CoffeeBeansRoasted", LootRarity.ExtraRare}
        },
        -- Инвентарь зомби мужчины
        inventorymale = {
            items = {"SHF.CoffeeBeansRoasted", LootRarity.ExtraRare}
        },
        -- =====================
        -- OUTFITS / НАРЯДЫ
        -- =====================

        -- водителя скорой помощи
        Outfit_AmbulanceDriver = {
            items = {}
        },
        -- Армейский Камуфляж Пустыня
        Outfit_ArmyCamoDesert = {
            items = {}
        },
        -- Армейский Камуфляж Зеленый
        Outfit_ArmyCamoGreen = {
            items = {}
        },
        -- Бандит
        Outfit_Bandit = {
            items = {}
        },
        -- Байкер
        Outfit_Biker = {
            items = {}
        },
        -- Кемпер
        Outfit_Camper = {
            items = {}
        },
        -- Строитель
        Outfit_ConstructionWorker = {
            items = {}
        },
        -- Шеф повар общий
        Outfit_Cook_Generic = {
            items = {}
        },
        -- Шеф повар спиффо
        Outfit_Cook_Spiffos = {
            items = {}
        },
        -- Доктор
        Outfit_Doctor = {
            items = {}
        },
        -- Фермер
        Outfit_Farmer = {
            items = {}
        },
        -- Пожарный Полный Костюм
        Outfit_FiremanFullSuit = {
            items = {}
        },
        -- Пожарный Стриптизер
        Outfit_FiremanStripper = {
            items = {}
        },
        -- Рыбак
        Outfit_Fisherman = {
            items = {}
        },
        -- Мастер
        Outfit_Foreman = {
            items = {}
        },
        -- ХЗ что это
        Outfit_Fossoil = {
            items = {}
        },
        -- Работник СТО
        Outfit_Gas2Go = {
            items = {}
        },
        -- Гилли
        Outfit_Ghillie = {
            items = {}
        },
        -- Голфист
        Outfit_Golfer = {
            items = {}
        },
        -- Хоббо
        Outfit_Hobbo = {
            items = {}
        },
        -- Охотник
        Outfit_Hunter = {
            items = {}
        },
        -- Заключенный
        Outfit_Inmate = {
            items = {}
        },
        -- ЗаключенныйХаки
        Outfit_InmateKhaki = {
            items = {}
        },
        -- Маккойс
        Outfit_McCoys = {
            items = {}
        },
        -- Механик
        Outfit_Mechanic = {
            items = {}
        },
        -- Сваршик
        Outfit_Metalworker = {
            items = {}
        },
        -- Медсестра
        Outfit_Nurse = {
            items = {}
        },
        -- Оффисный планктон
        Outfit_OfficeWorker = {
            items = {}
        },
        -- Планктон в юбке
        Outfit_OfficeWorkerSkirt = {
            items = {}
        },
        -- Фармацевт
        Outfit_Pharmacist = {
            items = {}
        },
        -- Покерныый диллер
        Outfit_PokerDealer = {
            items = {}
        },
        -- Коп
        Outfit_Police = {
            items = {}
        },
        -- Детектив
        Outfit_PoliceState = {
            items = {}
        },
        -- Коп стриптизер
        Outfit_PoliceStripper = {
            items = {}
        },
        -- Свяшенник
        Outfit_Priest = {
            items = {}
        },
        -- Частная полиция 
        Outfit_PrivateMilitia = {
            items = {}
        },
        -- Панк
        Outfit_Punk = {
            items = {}
        },
        -- Рейдер
        Outfit_Raider = {
            items = {}
        },
        -- Рейнджер
        Outfit_Ranger = {
            items = {}
        },
        -- деревенщина
        Outfit_Redneck = {
            items = {}
        },
        -- Рокер
        Outfit_Rocker = {
            items = {}
        },
        -- стриптизерша
        Outfit_Stripper = {
            items = {}
        },
        -- черная стриптизерша
        Outfit_StripperBlack = {
            items = {}
        },
        -- гола стриптизерша
        Outfit_StripperNaked = {
            items = {}
        },
        -- розовая стриптизерша
        Outfit_StripperPink = {
            items = {}
        },
        -- студент
        Outfit_Student = {
            items = {}
        },
        -- Выживший
        Outfit_Survivalist = {
            items = {}
        },
        -- Выживший
        Outfit_Survivalist02 = {
            items = {}
        },
        -- Выживший
        Outfit_Survivalist03 = {
            items = {}
        },
        -- Учитель
        Outfit_Teacher = {
            items = {}
        },
        -- Гром газ
        Outfit_ThunderGas = {
            items = {}
        },
        -- Турист
        Outfit_Tourist = {
            items = {}
        },
        -- Студент универа
        Outfit_Varsity = {
            items = {}
        },
        -- Классический офицант
        Outfit_Waiter_Classy = {
            items = {}
        },
        -- Официант Закусочная
        Outfit_Waiter_Diner = {
            items = {}
        },
        -- Официант Маркет
        Outfit_Waiter_Market = {
            items = {}
        },
        -- Офицант ПилеОКреп
        Outfit_Waiter_PileOCrepe = {
            items = {}
        },
        -- Офицант пицерии
        Outfit_Waiter_PizzaWhirled = {
            items = {}
        },
        -- Офицант ресторана
        Outfit_Waiter_Restaurant = {
            items = {}
        },
        -- Офицант Спиффо
        Outfit_Waiter_Spiffo = {
            items = {}
        },
        -- Офицант тако бели
        Outfit_Waiter_TacoDelPancho = {
            items = {}
        },
    },

    -- =====================
    --    BAGS/CONTAINERS   СУМКИ/КОНТЕЙНЕРЫ
    -- =====================

    -- Большой рюкзак
    Bag_ALICEpack = {
        items = {}
    },
    -- Армейский рюкзак
    Bag_ALICEpack_Army = {
        items = {}
    },
    -- большая походная сумка
    Bag_BigHikingBag = {
        items = {}
    },
    -- Сумка для боулинга
    Bag_BowlingBallBag = {
        items = {}
    },
    -- Докторский саквояж
    Bag_DoctorBag = {
        items = {}
    },
    -- Спортивная сумка
    Bag_DuffelBag = {
        items = {}
    },
    -- Спортивная сумка 2
    Bag_DuffelBagTINT = {
        items = {}
    },
    -- Сумка для гольфа
    Bag_GolfBag = {
        items = {}
    },
    -- Спортивная сумка 3 сумка заключенного
    Bag_InmateEscapedBag = {
        items = {}
    },
    -- Медицинская сумка
    Bag_MedicalBag = {
        items = {}
    },
    -- Спортивная сумка 4 военная
    Bag_Military = {
        items = {}
    },
    -- Спортивная сумка 5 сумка денег
    Bag_MoneyBag = {
        items = {}
    },
    -- обычная походная сумка
    Bag_NormalHikingBag = {
        items = {}
    },
    -- Школьный рюкзак
    Bag_Schoolbag = {
        items = {}
    },
    -- Туристический рюкзак
    Bag_SurvivorBag = {
        items = {}
    },
    -- Спортивная сумка 6 сумка рабочего
    Bag_WorkerBag = {
        items = {}
    },
    -- Дипломат
    Briefcase = {
        items = {}
    },
    -- Аптечка первой помощи
    FirstAidKit = {
        items = {}
    },
    -- Мусорный пакет
    Garbagebag = {
        items = {}
    },
    -- Полиэтиленовый пакет
    GroceryBag1 = {
        items = {}
    },
    -- Полиэтиленовый пакет
    GroceryBag2 = {
        items = {}
    },
    -- Полиэтиленовый пакет
    GroceryBag3 = {
        items = {}
    },
    -- Полиэтиленовый пакет
    GroceryBag4 = {
        items = {}
    },
    -- Полиэтиленовый пакет
    GroceryBag5 = {
        items = {}
    },
    -- Чехол для гитары
    Guitarcase = {
        items = {}
    },
    -- Барсетка
    Handbag = {
        items = {}
    },
    -- Обеденный пакет
    Lunchbag = {
        items = {}
    },
    -- Коробка для завтрака
    Lunchbox = {
        items = {}
    },
    -- Коробка для завтрака
    Lunchbox2 = {
        items = {}
    },
    -- Бумажный пакет
    Paperbag = {
        items = {}
    },
    -- Бумажный пакет
    Paperbag_Jays = {
        items = {}
    },
    -- Бумажный пакет
    Paperbag_Spiffos = {
        items = {}
    },
    -- Полиэтиленовый пакет
    Plasticbag = {
        items = {}
    },
    -- Женская сумочка
    Purse = {
        items = {}
    },
    -- Ранец
    Bag_Satchel = {
        items = {}
    },
    -- Мешочек для семян
    SeedBag = {
        items = {}
    },
    -- Набор для шитья
    SewingKit = {
        items = {}
    },
    -- Чемодан
    Suitcase = {
        items = {}
    },
    -- Сумка
    Tote = {
        items = {}
    }
}

for location, data in pairs(suburbsDistribution.all) do
    for _, value in ipairs(data.items) do
        table.insert(SuburbsDistributions['all'][location].items, value);
    end
end
