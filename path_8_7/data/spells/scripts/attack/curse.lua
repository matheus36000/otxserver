local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DEATH)

local condition = Condition(CONDITION_CURSED)
condition:setParameter(CONDITION_PARAM_DELAYED, true)

condition:addDamage(1, 4000, -45)
condition:addDamage(1, 4000, -40)
condition:addDamage(1, 4000, -35)
condition:addDamage(1, 4000, -34)
condition:addDamage(2, 4000, -33)
condition:addDamage(2, 4000, -32)
condition:addDamage(2, 4000, -31)
condition:addDamage(2, 4000, -30)
condition:addDamage(3, 4000, -29)
condition:addDamage(3, 4000, -25)
condition:addDamage(3, 4000, -24)
condition:addDamage(4, 4000, -23)
condition:addDamage(4, 4000, -20)
condition:addDamage(5, 4000, -19)
condition:addDamage(5, 4000, -15)
condition:addDamage(6, 4000, -10)
condition:addDamage(10, 4000, -5)
combat:setCondition(condition)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
