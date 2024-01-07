phy_fixed_rotation = true;
startAutoAttack = keyboard_check(ord("1"));

if (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D")))
{
    isMoving = true;
    isAttacking = false; // Сбрасываем состояние атаки, так как мы двигаемся
}
else
{
    isMoving = false;
    isAttacking = false; // Сбрасываем состояние атаки, так как мы не двигаемся
}

if (startAutoAttack)
{
    isAttacking = true;
    sprite_index = player_attack_sprite; // Устанавливаем спрайт атаки
}
else if (!isMoving && !isAttacking)
{
    sprite_index = player_stay; // Если не двигаемся и не атакуем, устанавливаем спрайт стояния
}
else if (isMoving)
{
    sprite_index = player_sprite_run_right; 

    if (keyboard_check(ord("W")))
    {
        phy_position_y += -3;
    }
    if (keyboard_check(ord("S")))
    {
        phy_position_y += 3;
    }

    if (keyboard_check(ord("D")))
    {
        phy_position_x += 3;
        image_xscale = 1; 
    }
    if (keyboard_check(ord("A")))
    {
        phy_position_x += -3;
        image_xscale = -1; 
    }
}

if (hp <= 0) {
	sprite_index = player_death;
}
