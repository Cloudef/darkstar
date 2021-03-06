-----------------------------------------
-- ID: 6464
-- Item: behemoth_steak
-- Food Effect: 180Min, All Races
-----------------------------------------
-- HP +40
-- STR +7
-- DEX +7
-- INT -3
-- Attack +23% (cap 160)
-- Ranged Attack +23% (cap 160)
-- Triple Attack +1%
-- Lizard Killer +4
-- hHP +4
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(dsp.effects.FOOD) == true or target:hasStatusEffect(dsp.effects.FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(dsp.effects.FOOD,0,0,10800,6464);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    target:addMod(MOD_HP, 40);
    target:addMod(MOD_STR, 7);
    target:addMod(MOD_DEX, 7);
    target:addMod(MOD_INT, -3);
    target:addMod(MOD_FOOD_ATTP, 23);
    target:addMod(MOD_FOOD_ATT_CAP, 160);
    target:addMod(MOD_FOOD_RATTP, 23);
    target:addMod(MOD_FOOD_RATT_CAP, 160);
    target:addMod(MOD_TRIPLE_ATTACK, 1);
    target:addMod(MOD_LIZARD_KILLER, 4);
    target:addMod(MOD_HPHEAL, 4);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_HP, 40);
    target:delMod(MOD_STR, 7);
    target:delMod(MOD_DEX, 7);
    target:delMod(MOD_INT, -3);
    target:delMod(MOD_FOOD_ATTP, 23);
    target:delMod(MOD_FOOD_ATT_CAP, 160);
    target:delMod(MOD_FOOD_RATTP, 23);
    target:delMod(MOD_FOOD_RATT_CAP, 160);
    target:delMod(MOD_TRIPLE_ATTACK, 1);
    target:delMod(MOD_LIZARD_KILLER, 4);
    target:delMod(MOD_HPHEAL, 4);
end;
