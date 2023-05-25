import { MigrationInterface, QueryRunner } from "typeorm";

export class CreateCharactersTable1685036564699 implements MigrationInterface {
    name = 'CreateCharactersTable1685036564699'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE \`characters\` (\`id\` varchar(36) NOT NULL, \`user_id\` varchar(36) NOT NULL, \`name\` varchar(255) NOT NULL, \`class\` enum ('knight', 'wizard') NOT NULL, \`experience\` bigint NOT NULL, \`level\` int NOT NULL, \`gold\` bigint NOT NULL, \`created_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), \`updated_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6), \`deleted_at\` datetime(6) NULL, INDEX \`IDX_a486fe82a8042e3d0ddd64161f\` (\`created_at\`), UNIQUE INDEX \`IDX_86a2bcc85e3473ecf3693dfe5a\` (\`name\`), PRIMARY KEY (\`id\`)) ENGINE=InnoDB`);
        await queryRunner.query(`ALTER TABLE \`characters\` ADD CONSTRAINT \`FK_c6e648aeaab79e4213def02aba8\` FOREIGN KEY (\`user_id\`) REFERENCES \`users\`(\`id\`) ON DELETE NO ACTION ON UPDATE NO ACTION`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`ALTER TABLE \`characters\` DROP FOREIGN KEY \`FK_c6e648aeaab79e4213def02aba8\``);
        await queryRunner.query(`DROP INDEX \`IDX_86a2bcc85e3473ecf3693dfe5a\` ON \`characters\``);
        await queryRunner.query(`DROP INDEX \`IDX_a486fe82a8042e3d0ddd64161f\` ON \`characters\``);
        await queryRunner.query(`DROP TABLE \`characters\``);
    }
}
