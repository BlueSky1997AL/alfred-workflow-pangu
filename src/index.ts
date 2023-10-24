import pangu from 'pangu';

const input = process.argv[2];

if (input) {
    const result = pangu.spacing(input);
    process.stdout.write(result || '');
}
