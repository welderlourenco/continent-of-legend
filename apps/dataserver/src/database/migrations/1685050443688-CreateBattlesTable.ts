import { MigrationInterface, QueryRunner } from "typeorm";

export class CreateBattlesTable1685050443688 implements MigrationInterface {
    name = 'CreateBattlesTable1685050443688'

    public async up(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`CREATE TABLE \`battles\` (\`id\` varchar(36) NOT NULL, \`map\` enum ('lorencia', 'noria', 'devias', 'dungeon') NOT NULL, \`created_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6), \`updated_at\` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6), INDEX \`IDX_d0b5d8dd543e08f5d9ba6e9ed2\` (\`created_at\`), PRIMARY KEY (\`id\`)) ENGINE=InnoDB`);
    }

    public async down(queryRunner: QueryRunner): Promise<void> {
        await queryRunner.query(`DROP INDEX \`IDX_d0b5d8dd543e08f5d9ba6e9ed2\` ON \`battles\``);
        await queryRunner.query(`DROP TABLE \`battles\``);
    }
}
