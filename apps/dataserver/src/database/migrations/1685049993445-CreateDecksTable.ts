import { MigrationInterface, QueryRunner } from "typeorm";

export class CreateDecksTable1685049993445 implements MigrationInterface {
    name = 'CreateDecksTable1685049993445'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE \`decks\` (\`id\` varchar(36) NOT NULL, \`character_id\` varchar(36) NOT NULL, \`card_id\` varchar(36) NOT NULL, \`map\` enum ('lorencia', 'noria', 'devias', 'dungeon') NOT NULL, \`position\` int NOT NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`);
        await queryRunner.query(`ALTER TABLE \`decks\` ADD CONSTRAINT \`FK_54e358d51c1723f11f4190dbe21\` FOREIGN KEY (\`character_id\`) REFERENCES \`characters\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE \`decks\` ADD CONSTRAINT \`FK_fb0971673083779bdd19827c8d6\` FOREIGN KEY (\`card_id\`) REFERENCES \`cards\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE \`decks\` DROP FOREIGN KEY \`FK_fb0971673083779bdd19827c8d6\``);
        await queryRunner.query(`ALTER TABLE \`decks\` DROP FOREIGN KEY \`FK_54e358d51c1723f11f4190dbe21\``);
        await queryRunner.query(`DROP TABLE \`decks\``);
    }
}
