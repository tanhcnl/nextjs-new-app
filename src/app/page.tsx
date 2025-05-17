import styles from './page.module.css';

export default function Home() {
  return (
    <main className={styles.main}>
      <div className={styles.description}>
        <h1>Welcome to Next.js!</h1>
        <p>Get started by editing <code>src/app/page.tsx</code></p>
      </div>
    </main>
  );
}