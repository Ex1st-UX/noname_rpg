if (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))
{
    state = CharacterState.Run;
}
else if (keyboard_check(ord("1")))
{
    state = CharacterState.Attack;
}

// Обновление состояния персонажа
switch (state)
{
    case CharacterState.Stay:
        playerStaying();
        break;

    case CharacterState.Run:
		playerMoving();
        break;

    case CharacterState.Attack:
        sprite_index = player_attack_sprite;
        break;

    case CharacterState.Death:
        sprite_index = player_death;
        break;
}
