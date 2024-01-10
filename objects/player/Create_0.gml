event_inherited();
max_hp = 100;
hp = 100;

phy_fixed_rotation = true;

enum CharacterState {
    Stay,
    Run,
    Attack,
    Death
}

state = CharacterState.Stay;
