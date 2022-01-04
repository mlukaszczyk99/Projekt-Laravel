<?php

namespace App\Enums;

class UserRole //wybór roli przy rejestracji użytkownika
{
    const ADMIN = 'admin';
    const USER = 'user';

    const TYPES = [
        self::ADMIN,
        self::USER,
    ];
}

?>