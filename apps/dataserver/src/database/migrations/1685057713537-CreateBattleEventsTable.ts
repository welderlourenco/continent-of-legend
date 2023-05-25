import { MigrationInterface, QueryRunner } from "typeorm";

export class CreateBattleEventsTable1685057713537 implements MigrationInterface {
    name = 'CreateBattleEventsTable1685057713537'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE \`battle_events\` (\`id\` varchar(36) NOT NULL, \`character_id\` varchar(36) NOT NULL, \`battle_id\` varchar(36) NOT NULL, \`is_host\` tinyint NOT NULL, \`event\` varchar(255) NOT NULL, \`state\` json NULL, PRIMARY KEY (\`id\`)) ENGINE=InnoDB`);
        await queryRunner.query(`ALTER TABLE \`battle_events\` ADD CONSTRAINT \`FK_63b81ed877dc65297ad18a8186b\` FOREIGN KEY (\`battle_id\`) REFERENCES \`battles\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`);
        await queryRunner.query(`ALTER TABLE \`battle_events\` ADD CONSTRAINT \`FK_2034e6c5fbc34c7b872ddce6672\` FOREIGN KEY (\`character_id\`) REFERENCES \`characters\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE \`battle_events\` DROP FOREIGN KEY \`FK_2034e6c5fbc34c7b872ddce6672\``);
        await queryRunner.query(`ALTER TABLE \`battle_events\` DROP FOREIGN KEY \`FK_63b81ed877dc65297ad18a8186b\``);
        await queryRunner.query(`DROP TABLE \`battle_events\``);
    }
}
