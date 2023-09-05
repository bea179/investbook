/*
 * InvestBook
 * Copyright (C) 2023  Spacious Team <spacious-team@ya.ru>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

ALTER TABLE `event_cash_flow` CHANGE COLUMN `value`
    `value` DECIMAL(12,6) NOT NULL COMMENT 'Размер' AFTER `type`;

ALTER TABLE `security_event_cash_flow` CHANGE COLUMN `value`
    `value` DECIMAL(12,6) NOT NULL COMMENT 'Размер' AFTER `type`;

ALTER TABLE `transaction_cash_flow` CHANGE COLUMN `value`
    `value` DECIMAL(12,6) NOT NULL COMMENT 'Размер' AFTER `type`;