require 'Items/SuburbsDistributions'
require "Items/ProceduralDistributions"
require "Vehicles/VehicleDistributions"
local UAZLItems = require "Items/PZ_UAZLItems"

-- Переобразует таблицы в одну большую
function mergeTables(...)
    local mergedTable = {} -- Создаем новую пустую таблицу для объединенных данных

    -- Проходим по всем аргументам функции (каждый из которых должен быть таблицей!!!)
    for _, tbl in ipairs({...}) do
        -- Проходим по каждому элементу в текущей таблице
        for _, childTbl in ipairs(tbl) do
            for _, value in ipairs(childTbl) do
                -- Добавляем значение в объединенную таблицу
                table.insert(mergedTable, value)
            end
        end
    end

    return mergedTable -- Возвращаем объединенную таблицу
end

local function addSandboxLoot()
    -- Обект редкости лута
    LootRarity = {
        Common = (SandboxVars.UAZL.Loot or defaultLoot) * 8,
        Uncommon = (SandboxVars.UAZL.Loot or defaultLoot) * 5,
        Rare = (SandboxVars.UAZL.Loot or defaultLoot) * 3,
        VeryRare = (SandboxVars.UAZL.Loot or defaultLoot) * 1,
        ExtraRare = (SandboxVars.UAZL.Loot or defaultLoot) * 0.5,
        Elite = (SandboxVars.UAZL.Loot or defaultLoot) * 0.01,
    }
    local defaultLoot = 3;

    local suburbsDistribution = {
        -- Общее
        all = {
            -- Контейнер
            crate = {
                items = {}
            },
            -- Инвентарь зомби женщины
            inventoryfemale = {
                items = mergeTables(UAZLItems.getBandagesItems(LootRarity.Elite),
                UAZLItems.getDisinfectantsItems(LootRarity.Elite),
                UAZLItems.getFirstAidSkillBooksItems(LootRarity.Elite),
                UAZLItems.getHerbsItems(LootRarity.Elite),
                UAZLItems.getMedicalEquipmentItems(LootRarity.Elite),
                UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Elite),
                UAZLItems.getPharmaceuticalsItems(LootRarity.Elite),
                UAZLItems.getCleaningItems(LootRarity.Elite),
                UAZLItems.getCommunicationsBaseItems(LootRarity.Elite),
                UAZLItems.getTourismItems(LootRarity.Elite),
                UAZLItems.getMoneyItems(LootRarity.Rare),

                UAZLItems.getMeleeWeaponsAxesItems(LootRarity.Elite),
                UAZLItems.getMeleeWeaponsLongBluntsItems(LootRarity.Elite),
                UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Elite),
                UAZLItems.getMeleeWeaponsLongBladesItems(LootRarity.Elite),
                UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Elite)

                )
            },
            -- Инвентарь зомби мужчины
            inventorymale = {
                items = mergeTables(UAZLItems.getBandagesItems(LootRarity.Elite),
                    UAZLItems.getDisinfectantsItems(LootRarity.Elite),
                    UAZLItems.getFirstAidSkillBooksItems(LootRarity.Elite),
                    UAZLItems.getHerbsItems(LootRarity.Elite),
                    UAZLItems.getMedicalEquipmentItems(LootRarity.Elite),
                    UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Elite),
                    UAZLItems.getPharmaceuticalsItems(LootRarity.Elite),
                    UAZLItems.getCleaningItems(LootRarity.Elite),
                    UAZLItems.getCommunicationsBaseItems(LootRarity.Elite),
                    UAZLItems.getTourismItems(LootRarity.Elite),
    
                    UAZLItems.getMeleeWeaponsAxesItems(LootRarity.Elite),
                    UAZLItems.getMeleeWeaponsLongBluntsItems(LootRarity.Elite),
                    UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Elite),
                    UAZLItems.getMeleeWeaponsLongBladesItems(LootRarity.Elite),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Elite)
    
                    )
            },
            -- =====================
            -- OUTFITS / НАРЯДЫ
            -- =====================

            -- водителя скорой помощи
            Outfit_AmbulanceDriver = {
                items = mergeTables(UAZLItems.getBandagesItems(LootRarity.Rare),
                    UAZLItems.getDisinfectantsItems(LootRarity.Rare),
                    UAZLItems.getFirstAidSkillBooksItems(LootRarity.Rare), UAZLItems.getHerbsItems(LootRarity.Rare),
                    UAZLItems.getMedicalEquipmentItems(LootRarity.Rare),
                    UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Rare),
                    UAZLItems.getPharmaceuticalsItems(LootRarity.Rare))
            },
            -- Армейский Камуфляж Пустыня
            Outfit_ArmyCamoDesert = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Rare),
                    UAZLItems.getHandguns308RifleM14Items(LootRarity.Rare),
                    UAZLItems.getHandguns223RifleMSR700Items(LootRarity.Rare),
                    UAZLItems.getHandguns308RifleMSR788Items(LootRarity.Rare),
                    UAZLItems.getHandguns9mmPistolItems(LootRarity.Rare),
                    UAZLItems.getHandguns556RifleM16Items(LootRarity.Uncommon))
            },
            -- Армейский Камуфляж Зеленый
            Outfit_ArmyCamoGreen = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Rare),
                    UAZLItems.getHandguns308RifleM14Items(LootRarity.Rare),
                    UAZLItems.getHandguns223RifleMSR700Items(LootRarity.Rare),
                    UAZLItems.getHandguns308RifleMSR788Items(LootRarity.Rare),
                    UAZLItems.getHandguns9mmPistolItems(LootRarity.Rare),
                    UAZLItems.getHandguns556RifleM16Items(LootRarity.Uncommon))
            },
            -- Бандит
            Outfit_Bandit = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare),
                    UAZLItems.getHandguns44MagnumPistolItems(LootRarity.Rare),
                    UAZLItems.getHandguns44MagnumRevolverItems(LootRarity.Rare))
            },
            -- Байкер
            Outfit_Biker = {
                items = mergeTables(UAZLItems.getMeleeWeaponsLongBluntsItems(LootRarity.Rare),
                    UAZLItems.getHandguns44MagnumPistolItems(LootRarity.Rare),
                    UAZLItems.getHandguns44MagnumRevolverItems(LootRarity.Rare))
            },
            -- Кемпер
            Outfit_Camper = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Rare),
                    UAZLItems.getCampingItems(LootRarity.Rare), UAZLItems.getCommunicationsBaseItems(LootRarity.Rare),
                    UAZLItems.getTrappingSkillBooksItems(LootRarity.Uncommon))
            },
            -- Строитель
            Outfit_ConstructionWorker = {
                items = mergeTables(UAZLItems.getConstructionWorkerItems(LootRarity.Common),
                    UAZLItems.getCarpentrySkillBooksItems(LootRarity.Rare),
                    UAZLItems.getCarpentrySkillBooksItems(LootRarity.Uncommon))
            },
            -- Шеф повар общий
            Outfit_Cook_Generic = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare),
                    UAZLItems.getCookingSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getWaiterPizzaWhirledItems(LootRarity.Uncommon))
            },
            -- Шеф повар спиффо
            Outfit_Cook_Spiffos = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare),
                    UAZLItems.getCookingSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getWaiterSpiffoItems(LootRarity.Rare),
                    UAZLItems.getWaiterPizzaWhirledItems(LootRarity.Uncommon))
            },
            -- Доктор
            Outfit_Doctor = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare),
                    UAZLItems.getBandagesItems(LootRarity.Uncommon), UAZLItems.getDisinfectantsItems(LootRarity.Common),
                    UAZLItems.getHerbsItems(LootRarity.ExtraRare),
                    UAZLItems.getMedicalEquipmentItems(LootRarity.VeryRare),
                    UAZLItems.getPharmaceuticalsItems(LootRarity.Rare))
            },
            -- Фермер
            Outfit_Farmer = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare),
                    UAZLItems.getFarmingSkillBooksItems(LootRarity.Uncommon))
            },
            -- Пожарный Полный Костюм
            Outfit_FiremanFullSuit = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare),
                    UAZLItems.getExtinguisherItems(LootRarity.Uncommon))
            },
            -- Пожарный Стриптизер
            Outfit_FiremanStripper = {
                items = mergeTables(UAZLItems.getMoneyItems(LootRarity.Common))
            },
            -- Рыбак
            Outfit_Fisherman = {
                items = mergeTables(UAZLItems.getBookFishingSkillBooksItems(LootRarity.Common))
            },
            -- Мастер
            Outfit_Foreman = {
                items = mergeTables(UAZLItems.getCarpentrySkillBooksItems(LootRarity.Common))
            },
            -- ХЗ что это
            Outfit_Fossoil = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Работник СТО
            Outfit_Gas2Go = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare),
                    UAZLItems.getMechanicItems(LootRarity.Rare))
            },
            -- Гилли
            Outfit_Ghillie = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Голфист
            Outfit_Golfer = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Хоббо
            Outfit_Hobbo = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Охотник
            Outfit_Hunter = {
                items = mergeTables(UAZLItems.getHandguns223RifleMSR700Items(LootRarity.Rare))
            },
            -- Заключенный
            Outfit_Inmate = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- ЗаключенныйХаки
            Outfit_InmateKhaki = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Маккойс
            Outfit_McCoys = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Механик
            Outfit_Mechanic = {
                items = mergeTables(UAZLItems.getMechanicItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Сваршик
            Outfit_Metalworker = {
                items = mergeTables(UAZLItems.getMetalworkerItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare))
            },
            -- Медсестра
            Outfit_Nurse = {
                items = mergeTables(UAZLItems.getBandagesItems(LootRarity.Rare),
                    UAZLItems.getDisinfectantsItems(LootRarity.VeryRare), UAZLItems.getHerbsItems(LootRarity.VeryRare),
                    UAZLItems.getMedicalEquipmentItems(LootRarity.VeryRare),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Uncommon))
            },
            -- Оффисный планктон
            Outfit_OfficeWorker = {
                items = mergeTables(UAZLItems.getStationeryItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Uncommon))
            },
            -- Планктон в юбке
            Outfit_OfficeWorkerSkirt = {
                items = mergeTables(UAZLItems.getStationeryItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Uncommon))
            },
            -- Фармацевт
            Outfit_Pharmacist = {
                items = mergeTables(UAZLItems.getPharmaceuticalsItems(LootRarity.Uncommon),
                    UAZLItems.getPharmaceuticalsItems(LootRarity.Uncommon))
            },
            -- Покерныый диллер
            Outfit_PokerDealer = {
                items = mergeTables(UAZLItems.getShotgunItems(LootRarity.Rare))
            },
            -- Коп
            Outfit_Police = {
                items = mergeTables(UAZLItems.getPharmaceuticalsItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Uncommon),
                    UAZLItems.getHandguns44MagnumPistolItems(LootRarity.Uncommon),
                    UAZLItems.getHandguns44MagnumRevolverItems(LootRarity.Uncommon),
                    UAZLItems.getHandguns45AutoPistolItems(LootRarity.Uncommon),
                    UAZLItems.getHandguns38SpecialRevolverItems(LootRarity.Uncommon),
                    UAZLItems.getHandguns45AutoRevolverItems(LootRarity.Uncommon),
                    UAZLItems.getHandguns9mmPistolItems(LootRarity.Uncommon),
                    UAZLItems.getShotgunItems(LootRarity.Uncommon),
                    UAZLItems.getHandguns308RifleM14Items(LootRarity.Uncommon))
            },
            -- Детектив
            Outfit_PoliceState = {
                items = mergeTables(UAZLItems.getPharmaceuticalsItems(LootRarity.Uncommon),
                UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Uncommon),
                UAZLItems.getHandguns44MagnumPistolItems(LootRarity.Uncommon),
                UAZLItems.getHandguns44MagnumRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns45AutoPistolItems(LootRarity.Uncommon),
                UAZLItems.getHandguns38SpecialRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns45AutoRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns9mmPistolItems(LootRarity.Uncommon),
                UAZLItems.getShotgunItems(LootRarity.Uncommon),
                UAZLItems.getHandguns308RifleM14Items(LootRarity.Uncommon))
            },
            -- Коп стриптизер
            Outfit_PoliceStripper = {
                items = mergeTables(UAZLItems.getMoneyItems(LootRarity.Uncommon),
                    UAZLItems.getMoneyItems(LootRarity.Uncommon))
            },
            -- Свяшенник
            Outfit_Priest = {
                items = mergeTables(UAZLItems.getPriestItems(LootRarity.Common))
            },
            -- Частная полиция 
            Outfit_PrivateMilitia = {
                items = mergeTables(UAZLItems.getPharmaceuticalsItems(LootRarity.Uncommon),
                UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Uncommon),
                UAZLItems.getHandguns44MagnumPistolItems(LootRarity.Uncommon),
                UAZLItems.getHandguns44MagnumRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns45AutoPistolItems(LootRarity.Uncommon),
                UAZLItems.getHandguns38SpecialRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns45AutoRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns9mmPistolItems(LootRarity.Uncommon),
                UAZLItems.getShotgunItems(LootRarity.Uncommon),
                UAZLItems.getHandguns308RifleM14Items(LootRarity.Uncommon))
            },
            -- Панк
            Outfit_Punk = {
                items = mergeTables(UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Uncommon))
            },
            -- Рейдер
            Outfit_Raider = {
                items = mergeTables(UAZLItems.getPharmaceuticalsItems(LootRarity.Uncommon),
                UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Uncommon),
                UAZLItems.getHandguns44MagnumPistolItems(LootRarity.Uncommon),
                UAZLItems.getHandguns44MagnumRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns45AutoPistolItems(LootRarity.Uncommon),
                UAZLItems.getHandguns38SpecialRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns45AutoRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns9mmPistolItems(LootRarity.Uncommon),
                UAZLItems.getShotgunItems(LootRarity.Uncommon),
                UAZLItems.getHandguns308RifleM14Items(LootRarity.Uncommon))
            },
            -- Рейнджер
            Outfit_Ranger = {
                items = mergeTables(UAZLItems.getPharmaceuticalsItems(LootRarity.Uncommon),
                UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Uncommon),
                UAZLItems.getHandguns44MagnumRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns38SpecialRevolverItems(LootRarity.Uncommon),
                UAZLItems.getHandguns45AutoRevolverItems(LootRarity.Uncommon),
                UAZLItems.getShotgunItems(LootRarity.Uncommon))
            },
            -- деревенщина
            Outfit_Redneck = {
                items = mergeTables(UAZLItems.getMeleeWeaponsAxesItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsLongBluntsItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Rare),
                    UAZLItems.getGardeningItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.VeryRare))
            },
            -- Рокер
            Outfit_Rocker = {
                items = mergeTables(UAZLItems.getGuitarItems(LootRarity.Uncommon))
            },
            -- стриптизерша
            Outfit_Stripper = {
                items = mergeTables(UAZLItems.getMoneyItems(LootRarity.Uncommon),
                    UAZLItems.getMoneyItems(LootRarity.Uncommon))
            },
            -- черная стриптизерша
            Outfit_StripperBlack = {
                items = mergeTables(UAZLItems.getMoneyItems(LootRarity.Uncommon),
                    UAZLItems.getMoneyItems(LootRarity.Uncommon))
            },
            -- гола стриптизерша
            Outfit_StripperNaked = {
                items = mergeTables(UAZLItems.getMoneyItems(LootRarity.Uncommon),
                    UAZLItems.getMoneyItems(LootRarity.Uncommon))
            },
            -- розовая стриптизерша
            Outfit_StripperPink = {
                items = mergeTables(UAZLItems.getMoneyItems(LootRarity.Uncommon),
                    UAZLItems.getMoneyItems(LootRarity.Uncommon))
            },
            -- студент
            Outfit_Student = {
                items = mergeTables(UAZLItems.getCarpentrySkillBooksItems(LootRarity.Rare),
                    UAZLItems.getCookingSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getElectricianSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getFarmingSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getFirstAidSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getBookFishingSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getForagingSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getMechanicSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getMetalWeldingSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getTailoringSkillBooksItems(LootRarity.Rare),
                    UAZLItems.getTrappingSkillBooksItems(LootRarity.Rare))
            },
            -- Выживший
            Outfit_Survivalist = {
                items = mergeTables(UAZLItems.getSurvivalistItems(LootRarity.Uncommon),
                    UAZLItems.getCampingItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsAxesItems(LootRarity.Uncommon),
                    UAZLItems.getMeleeWeaponsLongBladesItems(LootRarity.Rare),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Elite),
                    UAZLItems.getCommunicationsBaseItems(LootRarity.Elite))
            },
            -- Выживший
            Outfit_Survivalist02 = {
                items = mergeTables(UAZLItems.getSurvivalistItems(LootRarity.Uncommon),
                    UAZLItems.getCampingItems(LootRarity.Common), UAZLItems.getMeleeWeaponsAxesItems(LootRarity.Common),
                    UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.ExtraRare),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.Rare),
                    UAZLItems.getCommunicationsBaseItems(LootRarity.Common))
            },
            -- Выживший
            Outfit_Survivalist03 = {
                items = mergeTables(UAZLItems.getSurvivalistItems(LootRarity.Uncommon),
                    UAZLItems.getCampingItems(LootRarity.Rare),
                    UAZLItems.getMeleeWeaponsLongBluntsItems(LootRarity.Rare),
                    UAZLItems.getMeleeWeaponsShortBluntsItems(LootRarity.Elite),
                    UAZLItems.getMeleeWeaponsShortBladesItems(LootRarity.ExtraRare),
                    UAZLItems.getCommunicationsTacticalItems(LootRarity.ExtraRare))
            },
            -- Учитель
            Outfit_Teacher = {
                items = mergeTables(UAZLItems.getCarpentrySkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getCookingSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getElectricianSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getFarmingSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getFirstAidSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getBookFishingSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getForagingSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getMechanicSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getMetalWeldingSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getTailoringSkillBooksItems(LootRarity.Uncommon),
                    UAZLItems.getTrappingSkillBooksItems(LootRarity.Uncommon))
            },
            -- Гром газ
            Outfit_ThunderGas = {
                items = mergeTables(UAZLItems.getThunderGasItems(LootRarity.Uncommon))
            },
            -- Турист
            Outfit_Tourist = {
                items = mergeTables(UAZLItems.getTourismItems(LootRarity.Rare))
            },
            -- Студент универа
            Outfit_Varsity = {
                items = mergeTables(UAZLItems.getCarpentrySkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getCookingSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getElectricianSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getFarmingSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getFirstAidSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getForagingSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getMechanicSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getMetalWeldingSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getTailoringSkillBooksItems(LootRarity.VeryRare),
                    UAZLItems.getTrappingSkillBooksItems(LootRarity.VeryRare))
            },
            -- Классический офицант
            Outfit_Waiter_Classy = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare))
            },
            -- Официант Закусочная
            Outfit_Waiter_Diner = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare),
                    UAZLItems.getWaiterDinerItems(LootRarity.Rare))
            },
            -- Официант Маркет
            Outfit_Waiter_Market = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare))
            },
            -- Офицант ПилеОКреп
            Outfit_Waiter_PileOCrepe = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare))
            },
            -- Офицант пицерии
            Outfit_Waiter_PizzaWhirled = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare),
                    UAZLItems.getWaiterPizzaWhirledItems(LootRarity.Uncommon))
            },
            -- Офицант ресторана
            Outfit_Waiter_Restaurant = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare))
            },
            -- Офицант Спиффо
            Outfit_Waiter_Spiffo = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare),
                    UAZLItems.getWaiterSpiffoItems(LootRarity.Uncommon))
            },
            -- Офицант тако бели
            Outfit_Waiter_TacoDelPancho = {
                items = mergeTables(UAZLItems.getWaiterItems(LootRarity.Rare),
                    UAZLItems.getWaiterTacoDelPanchoItems(LootRarity.Uncommon))
            }
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

    for somekey, somedata in pairs(suburbsDistribution) do
        if somekey == "all" then
            for location, data in pairs(suburbsDistribution[somekey]) do
                for _, value in ipairs(data.items) do
                    table.insert(SuburbsDistributions[somekey][location].items, value)
                end
            end
        else
            for _, value in ipairs(somedata.items) do
                table.insert(SuburbsDistributions[somekey].items, value)
            end
        end
    end

    ItemPickerJava.doParse = true
end

-- Readds and reloads the spawns, that way, it should account for the sandbox settings
local function parseTables()
    if ItemPickerJava.doParse then
        ItemPickerJava.Parse()
        ItemPickerJava.doParse = nil
    end
end

Events.OnInitGlobalModData.Add(addSandboxLoot)
Events.OnLoadedMapZones.Add(parseTables)

