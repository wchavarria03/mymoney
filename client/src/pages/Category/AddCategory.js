import React from 'react';
import Form, { Group, Label, Control } from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';

const AddCategory = ({ addCategory,  category = {} }) => (
  <Form>
    <Group>
      <Label>Name</Label>
      <Control type="text" name="name" value={category.name} />
    </Group>
    <Group>
      <Label>Type</Label>
      <Control type="text" name="type" value={category.type} />
    </Group>
    <Button onClick={addCategory} >Add new category</Button>
  </Form>
);

export default AddCategory;
