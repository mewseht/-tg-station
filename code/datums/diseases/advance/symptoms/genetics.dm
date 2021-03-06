/*
//////////////////////////////////////

DNA Saboteur

	Very noticable.
	Lowers resistance tremendously.
	No changes to stage speed.
	Decreases transmittablity temrendously.
	Fatal Level.

Bonus
	Cleans the DNA of a person and then randomly gives them a disability.

//////////////////////////////////////
*/

/datum/symptom/genetic_mutation

	name = "Deoxyribonucleic Acid Saboteur"
	stealth = -2
	resistance = -3
	stage_speed = 0
	transmittable = -3
	level = 6
	var/good_mutations = 0

/datum/symptom/genetic_mutation/Activate(var/datum/disease/advance/A)
	..()
	if(prob(SYMPTOM_ACTIVATION_PROB))
		var/mob/living/M = A.affected_mob
		switch(A.stage)
			if(4, 5)
				M << "<span class='notice'>[pick("Your skin feels itchy.", "You feel light headed.")]</span>"
				clean_randmut(M, good_mutations == 1 ? (good_se_blocks | op_se_blocks) : bad_se_blocks, 20) // Give them a random good/bad mutation.
				domutcheck(M, null, 1) // Force the power to manifest
	return


/*
//////////////////////////////////////

DNA Aide

	Very very noticable.
	Lowers resistance tremendously.
	No changes to stage speed.
	Decreases transmittablity temrendously.
	Fatal Level.

Bonus
	Cleans the DNA of a person and then randomly gives them a power..

//////////////////////////////////////
*/

/datum/symptom/genetic_mutation/powers

	name = "Deoxyribonucleic Acid Aide"
	stealth = -3
	resistance = -4
	stage_speed = 0
	transmittable = -4
	level = 6
	good_mutations = 1