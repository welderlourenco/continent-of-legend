import { MigrationInterface, QueryRunner } from "typeorm";

export class CreateCardsTable1685039671861 implements MigrationInterface {
    name = 'CreateCardsTable1685039671861'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE \`cards\` (\`id\` varchar(36) NOT NULL, \`character_id\` varchar(36) NOT NULL, \`code\` bigint NOT NULL, \`level\` tinyint NOT NULL, \`modifiers\` json NULL, \`created_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), \`updated_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6), INDEX \`IDX_4f997a0bb98352fcad3239a8a8\` (\`created_at\`), PRIMARY KEY (\`id\`)) ENGINE=InnoDB`);
        await queryRunner.query(`ALTER TABLE \`cards\` ADD CONSTRAINT \`FK_167874460c5c3ca0ed82fe01b89\` FOREIGN KEY (\`character_id\`) REFERENCES \`characters\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE \`cards\` DROP FOREIGN KEY \`FK_167874460c5c3ca0ed82fe01b89\``);
        await queryRunner.query(`DROP INDEX \`IDX_4f997a0bb98352fcad3239a8a8\` ON \`cards\``);
        await queryRunner.query(`DROP TABLE \`cards\``);
    }
}
