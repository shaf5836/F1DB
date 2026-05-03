

import bcrypt from 'bcrypt';

const PASSWORD = 'test1234';  // shared password for all test users

const users = [
    { user_name: 'max_fan_2024',    favorite_driver_id: 1,  favorite_team_id: 1, position_start: 1,  position_current: 1  },
    { user_name: 'tifosi_charles',  favorite_driver_id: 3,  favorite_team_id: 2, position_start: 5,  position_current: 3  },
    { user_name: 'papaya_orange',   favorite_driver_id: 5,  favorite_team_id: 3, position_start: 10, position_current: 8  },
    { user_name: 'sir_lewis_44',    favorite_driver_id: 9,  favorite_team_id: 4, position_start: 2,  position_current: 4  },
    { user_name: 'el_plan_fan',     favorite_driver_id: 8,  favorite_team_id: 5, position_start: 15, position_current: 12 },
    { user_name: 'checo_power',     favorite_driver_id: 2,  favorite_team_id: 1, position_start: 20, position_current: 18 },
    { user_name: 'smooth_operator', favorite_driver_id: 4,  favorite_team_id: 2, position_start: 4,  position_current: 5  },
    { user_name: 'george_63_fan',   favorite_driver_id: 7,  favorite_team_id: 4, position_start: 8,  position_current: 7  },
    { user_name: 'oscar_the_shark', favorite_driver_id: 6,  favorite_team_id: 3, position_start: 12, position_current: 10 },
    { user_name: 'bearman_fan',     favorite_driver_id: 21, favorite_team_id: 2, position_start: 50, position_current: 45 },
];

console.log('-- Generated user seeds. Replace the User INSERT block in DBData.sql with this:\n');
console.log('INSERT INTO User (user_name, password_hash, favorite_driver_id, favorite_team_id, position_start, position_current, fantasy_points, f_league_id) VALUES');

const lines = [];
for (const u of users) {
    const hash = await bcrypt.hash(PASSWORD, 10);
    lines.push(`('${u.user_name}', '${hash}', ${u.favorite_driver_id}, ${u.favorite_team_id}, ${u.position_start}, ${u.position_current}, 0, 1)`);
}
console.log(lines.join(',\n') + ';');

console.log(`\n-- All ${users.length} users have password: ${PASSWORD}`);